var console = require("console");
var system  = require("system");
var q       = require("q");
q.stopUnhandledRejectionTracking();

var Timer   = require("timers").Timer;
var EventEmitter = require('events').EventEmitter;

var ExtractFileManager = require('exfilmgr.js').ExtractFileManager;

var __log = function(msg)
{
    console.writeln("[debug extorch.js] "+msg);
}

//
//  emits 'stage_changed'
//
function ExtractOrch(etcd, token)
{
    if (!(this instanceof ExtractOrch)) return new ExtractOrch(etcd, token);

    // etcd object
    this._store = require("../../nodemodules/etcdjs")(etcd);

    // this is some prefix
    this._etcd_prefix     = "/extract";

    // this is some prefix
    this._etcd_stage_pool = "/stage/pool";

    // this is some prefix
    this._etcd_stageflow  = "/stageflows";

    // the timeout in seconds
    this._ttl = 2;

    // unique identifying a flow
    this._token = token;

    this._state             = 'bootstrap'; //'discover'| 'rolling' |'error'
    this._etcd_last_message = '';


    this._flows = [];

    this._extractFileManager = undefined;

    var self = this;
    this.tokenExists().then( function(ok) {
        console.error('You cannot have to agents with the same token!');
        system.exit(0);
    }, function() {
        self.keepAlive(); //start the timer
    }).done();

}

ExtractOrch.prototype.__proto__ = EventEmitter.prototype;

ExtractOrch.prototype.setState = function( state )
{
    __log('setState : '+state);

    if (state == undefined)  {
        console.error('Programmatic error in setState.');
        system.exit(0);
    }

    switch(state) {
        case 'bootstrap':
        case 'discover':
        case 'connected':
        case 'rolling':
        case 'error' : this._state = state; break;
        default: {
            console.error('programmatic erorr in setState');
            system.exit(0);
        }
    }

    __log('******STATE FOR EXTRACT CHANGED TO:'+this._state);
}


ExtractOrch.prototype.clearLastEtcdMessage = function( message )
{
    __log('setLastEtcdMessage:'+message);
    this._etcd_last_message = message;

}

ExtractOrch.prototype.setLastEtcdMessage = function( message )
{
    __log('setLastEtcdMessage:'+message);
    this._etcd_last_message = message;

}

ExtractOrch.prototype.getState = function()
{
    return self._state;
}

/**
 * All flows for this token are valid [bootstrap->discover] transition
 */
ExtractOrch.prototype.waitForDiscoverState = function()
{
    __log("* waitForDiscoverState");

    var self  = this;
    var defer = q.defer();

    self.getMyFlows(self._token).then( function(flows) {
        if (flows.length == 0) {
            __log("* waitForDiscoverState --- no flows for me");
            return self.waitForDiscoverState();
        }

        if (self._extractFileManager instanceof ExtractFileManager) {
            self._extractFileManager.destroy();
            self._extractFileManager = undefined;
        }

        self._extractFileManager = ExtractFileManager(flows);

        var validation_arr = self._extractFileManager.validateFlows();

        if (validation_arr.length != 0) {
            __log('Flows validation failed! Waiting for a change');
            self.setLastEtcdMessage(validation_arr.join(','));
            self.setState('error');
            self.waitForStageChange(self._token).then( function() {
                self.waitForDiscoverState().then(function() {
                    defer.resolve();
                });
            });

        } else {
            __log('validation OK!');
            //
            //  Monitor for stage_changed
            //
            self.monitorStageChange(self._token);

            defer.resolve();
            return defer.promise;
        }

        }, function(err) {
            console.error('Cannot get flows from ETCD! Waiting now for a change in '
                                        +self._etcd_stageflow+"/"+self._token);
            self.setState('error');
            self.waitForStageChange(self._token).then( function() {
                self.waitForDiscoverState().then(function() {
                    defer.resolve();
                });//.done();
            });//.done();
        })//.done();

    return defer.promise;
}


ExtractOrch.prototype.monitorStageChange = function(token)
{
   __log('monitorStageChange');
   var self = this;
   return self.waitForStageChange(token).then(function() {
     self.emit('stage_changed');
     self.monitorStageChange(token)
   }).done();
}

ExtractOrch.prototype.waitForStageChange = function(token)
{
    __log("waitForStageChange:"+token);

    var def  = q.defer();
    var self = this;


    self._store.get(self._etcd_stageflow+"/"+token,
                    {'recursive':true, 'wait':true}, function(e,r) {

        if (e) {
            console.error('ERROR While connecting to etcd! Process will terminate');
            system.exit(0);
        }

        def.resolve();
    });

    return def.promise;
}

ExtractOrch.prototype.getMyFlows = function(token)
{
    __log("getMyFlows token:"+token);

    var def  = q.defer();
    var self = this;

    self._store.get(self._etcd_stageflow+"/"+token,
                    {'recursive':true}, function(e,r) {

        if (e) {
            console.error('ERROR While connecting to etcd! Process will terminate');
            system.exit(0);
        }

        if (r.node == undefined || r.node.nodes == undefined
            || r.node.nodes.length == undefined) {
            def.reject(e);
            return;
        }

        __log('resolving '+r.node.nodes);
        def.resolve(r.node.nodes);
    });

    return def.promise;
}

ExtractOrch.prototype.getNode = function(key)
{
    __log("ExtractOrch.prototype.getNode:"+key);

    var def = q.defer();

    var self = this;
    self._store.get(key, {recursive:true, dir:true },
                    function( e, r) {
                        if (e) {
                            def.reject(new Error(e));
                        }
                        def.resolve(r);
                    });

    return def.promise;
}

ExtractOrch.prototype.getNextStageAgentFromPool = function()
{
    __log('getNextStageAgentFromPool');

    var def = q.defer();

    var self = this;

    self._store.wait(this._etcd_stage_pool,{wait:true, dir:true, recursive:true},
                     function onWait( e, r, next) {
                         if (e) {
                             def.reject(new Error(e));
                         }

                         if (r.action == 'update')
                             def.resolve(r.node.key);
                         else
                             next(onWait);
                     }
                    );

    return def.promise;
}

ExtractOrch.prototype.keepAlive = function()
{
    //__log("orch.prototype.startKeepAlive:"+this._ttl);

    var self = this;

    self.etcdCreateDirIfNeeded().then( function() {
        //create hostname#pid
        self.etcdCreateNodeDirIfNeeded().then( function(d) {
            self.etcdSetStatus().then( function(d) {
              try {
                //if (self._ttl_timer instanceof Timer) {
                //    self._ttl_timer.stop();
                //    //__log("disconnect");
                //    self._ttl_timer.timeout.disconnect(self, self.keepAlive);
                //  }

                //self._ttl_timer = undefined;

                if (! (self._ttl_timer instanceof Timer)) {
                    self._ttl_timer = new Timer();
                    self._ttl_timer.timeout.connect( self, self.keepAlive );
                    self._ttl_timer.setSingleShot(true);
                }

                self._ttl_timer.start(self._ttl);
              } catch(e) { console.writeln(e);}
            }, function(e) {
                console.error("[error orch.js.etcd] etcdSetStatus etcd error:"+e);
                system.exit(0);
            })
        }, function(e) {
            console.error("[error orch.js.etcd] etcdCreateNodeDirIfNeeded error:"+e);
            system.exit(0);
        });
    })._catch(function(e) {
        console.error("[error orch.js.etcd] etcd error:"+e);
        system.exit(0);

    }).done();
}

ExtractOrch.prototype.nodeName = function()
{
    return this._etcd_prefix+"/"+this._token;
}

ExtractOrch.prototype.idName = function()
{
    return system.hostname+"$"+system.pid;
}

ExtractOrch.prototype.tokenExists = function()
{
    var def  = q.defer();
    var self = this;

    self._store.get(self.nodeName(), function(e,r) {
        if (r.node != undefined) {
            def.resolve();
        }
        else
            def.reject();
    });

    return def.promise;
}

ExtractOrch.prototype.etcdSetStatus = function()
{
    var def  = q.defer();
    var self = this;

    self._store.mkdir(self.nodeName(), {ttl:self._ttl*2, prevExist:true}, function(err,resp) {
        if (err) {
            console.error('Unable to set the etcd token. Process exists!');
            system.exit(0);
        }
        self._store.set(self.nodeName()+"/"+"state", self._state, function(e, r) {
            if (e) {
                def.reject(new Error("cannot set key:"+self.nodeName()+"/"+"state"));
            } else {
                self._store.set(self.nodeName()+"/"+"id", self.idName(),function(e,r) {
                    if (e)
                            def.reject(new Error("cannot set key"));
                    else {
                        self._store.set(self.nodeName()+"/"+"message", self._etcd_last_message,function(e,r) {
                            if (e)
                                def.reject(new Error("cannot set key"));
                            def.resolve();
                        });
                    }
                });
            }
        });
    });

    return def.promise;
}

ExtractOrch.prototype.etcdCreateNodeDirIfNeeded = function()
{
    var def  = q.defer();
    var self = this;

    if (this._ttl_timer instanceof Timer)
        def.resolve();
    else {
        self._store.mkdir(self.nodeName(), function(err,resp) {
            def.resolve();
        });
    }

    return def.promise;
}

ExtractOrch.prototype.etcdCreateDirIfNeeded = function()
{
    var def = q.defer();
    var self = this;

    if (this._ttl_timer instanceof Timer)
        def.resolve();
    else {
        self._store.get(self._etcd_prefix, function(err,resp) {
            if (resp)
                if (resp.errorCode > 0) {
                    self._store.mkdir(self._etcd_prefix, function(err,resp) {
                        def.resolve();
                    });
                } else {
                    def.resolve();
                }
            else {
                def.reject(new Error(err));
            }
        });
    }

    return def.promise;
}

module.exports = ExtractOrch;
