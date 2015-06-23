var console = require("console");
var system  = require("system");
var q       = require("q");

var Timer = require("timers").Timer;

var __log = function(msg)
{
    console.writeln("[debug stageorch.js] "+msg);
}

function StageOrch(etcd, ip, port)
{
    if (!(this instanceof StageOrch)) return new StageOrch(etcd, ip, port);

    //  etcd object
    this._store = require("../../nodemodules/etcdjs")(etcd);

    //  this is some prefix
    this._etcd_prefix = "/stage/pool/";

    //  the timeout in seconds
    this._ttl = 5;

    // address for tcp/ip binding
    this._ip = ip;

    // port where to listen for tcp/ip connections
    this._port = port;

    this._token     = undefined;
    this._connected = false;
    this._state     = 'discover'; //'bootstrap' | 'connected' | 'rolling' | 'error'
    this._etcd_last_message = '';

    this.keepAlive();
}

StageOrch.prototype.setState = function( state )
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

StageOrch.prototype.clearLastEtcdMessage = function( message )
{
    __log('setLastEtcdMessage:'+message);
    this._etcd_last_message = message;

}

StageOrch.prototype.setLastEtcdMessage = function( message )
{
    __log('setLastEtcdMessage:'+message);
    this._etcd_last_message = message;

}

StageOrch.prototype.getState = function()
{
    return self._state;
}

StageOrch.prototype.keepAlive = function()
{
    var self = this;
    //__log("keepAlive");

    self.etcdCreateDirIfNeeded().then( function() {
        //create hostname#pid
        self.etcdCreateNodeDirIfNeeded().then( function(d) {
            self.etcdSetStatus().then( function(d) {

                if (! (self._ttl_timer instanceof Timer)) {
                    self._ttl_timer = new Timer();
                    self._ttl_timer.timeout.connect( self, self.keepAlive );
                    self._ttl_timer.setSingleShot(true);
                }
                self._ttl_timer.start(self._ttl);

            }, function(e) {
                console.error("[error orch.js.etcd] etcdSetStatus etcd error:"+e);
                system.exit(0);
            })
        });
    })._catch(function(e) {
        console.error("[error orch.js.etcd] etcd error:"+e);
        system.exit(0);

    }).done();
}

StageOrch.prototype.nodeName = function()
{
    return this._etcd_prefix+
        system.hostname+"$"+system.pid;
}

StageOrch.prototype.etcdSetKey = function(key, val)
{
    var def  = q.defer();
    var self = this;

    self._store.set(key, val, function(e, r) {
        if (e)
            def.reject(e);
        else
            def.resolve();
    });

    return def.promise;
}

StageOrch.prototype.etcdSetStatus = function()
{
    var def  = q.defer();
    var self = this;
    try {
        self._store.mkdir(self.nodeName(), {ttl:this._ttl*2, prevExist:true}, function(err,resp) {

            if (err) {
                console.error('Unable to set the etcd token. Process exists!');
                system.exit(0);
            }

            q.all([self.etcdSetKey(self.nodeName()+"/"+"IP", self._ip),
                   self.etcdSetKey(self.nodeName()+"/"+"PORT", self._port)])

                .then( function(e,r) {
                    def.resolve();
                })._catch( function(e) {
                    __log('unable to set the keys?!. Etcd connection lost.');
                    system.exit(0);
                });
        });
    }
    catch(e) {
        console.error(e); system.exit(0);
    }
    return def.promise;
}

StageOrch.prototype.etcdCreateNodeDirIfNeeded = function()
{
    var def  = q.defer();
    var self = this;

    if (this._ttl_timer instanceof Timer)
        def.resolve();
    else {
        self._store.mkdir(self.nodeName(), function(err,resp) {
            if (err) {
                def.reject(new Error(err));
            } else {
                def.resolve();
            }
        });
    }

    return def.promise;
}

StageOrch.prototype.etcdCreateDirIfNeeded = function()
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

module.exports = StageOrch;
