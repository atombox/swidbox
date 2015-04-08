var console = require("console");
var system  = require("system");
var q       = require("q");

var Timer   = require("timers").Timer;

var ExtractFileManager = require('exfilmgr.js').ExtractFileManager;

var __log = function(msg)
{
    console.writeln("[debug extorch.js] "+msg);
}

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

    this._state = 'bootstrap'; //'discover'|'rolling'|'error'

    this._flows = [];

    this._extractFileManager = undefined;

    var self = this;
    this.tokenExists().then( function(ok) {
        console.error('You cannot have to agents with the same token!');
        system.exit(0);
    }, function() {
        self.keepAlive(); //start the timer
    });

}

/**
 * All flows for this token are valid [bootstrap->discover] transition
 */
ExtractOrch.prototype.waitForDiscoverState = function(wait)
{
    __log("* waitForDiscoverState");

    var self  = this;
    var defer = q.defer();

    if (wait == undefined)
        wait = false;
    
    self.getMyFlows(self._token, wait).then( function(flows) {
        if (flows.length == 0) {
            __log("* waitForDiscoverState --- no flows for me");  
            return self.waitForDiscoverState(true);
        }

        self._extractFileManager = ExtractFileManager(flows);
        
        var validation_arr = self._extractFileManager.validateFlows();

        if (validation_arr.length != 0) {
            __log('Flows validation failed!');
            defer.reject(validation_arr);
            return;
        }

        __log('validation OK!');
 
        }, function(err) {
            console.error('Cannot get flows from ETCD! Waiting now for a change in '+self._etcd_stageflow+"/"+self._token);
            self.waitForDiscoverState(true);
        });

    return defer.promise;

}

ExtractOrch.prototype.getMyFlows = function(token, wait)
{
    __log("getMyFlows token:"+token+", wait:"+wait);

    var def  = q.defer();
    var self = this;

    if (wait == undefined)
        wait = false;

    self._store.get(self._etcd_stageflow+"/"+token, 
                    {'recursive':true, 'wait':wait}, function(e,r) {

        if (e) {
            console.error('ERROR While connecting to etcd! Process will terminate');
            system.exit(0);
        }

        if (r.node == undefined || r.node.nodes == undefined || r.node.nodes.length == undefined) {
            def.reject(e);
            return;
        }

        console.dir(r.node.nodes);
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

                self._ttl_timer = undefined;

                self._ttl_timer = new Timer();
                self._ttl_timer.timeout.connect( self, self.keepAlive );

                self._ttl_timer.setSingleShot(true);
                self._ttl_timer.start(self._ttl);
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
                    else
                        def.resolve();
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
