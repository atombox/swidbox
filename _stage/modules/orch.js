
var console = require("console");
var system  = require("system");

var Timer = require("timers").Timer;

var __log = function(msg)
{
    console.writeln("[debug orch.js] "+msg);
}

function orch(params) 
{    
    if (!(this instanceof orch)) return new orch(params);

    this._store = require("../../nodemodules/etcdjs")(params);
    this._etcd_prefix = "/stage/pool/";    
    this._ttl = 3;
    this.keepAlive()
}

orch.prototype.keepAlive = function()
{
    __log("orch.prototype.startKeepAlive:"+this._ttl);

    var self = this;

    if (this._ttl_timer) {
        this._ttl_timer.disconnect(this.keepAlive);
        this._ttl_timer = undefined;
    }

    this._ttl_timer = new Timer();
    this._ttl_timer.timeout.connect( this, this.keepAlive );

    //we will restart the timer when we set the key
    
    self._store.get(self._etcd_prefix, function(err,resp) {
        if (JSON.parse(resp).errorCode > 0) {
            self._store.mkdir(self._etcd_prefix, function(err,resp) {
                __log('orch.prototype.keepAlive dir created');
            });
        }
    });
    
    console.dir(system.pid);
    //this._ttl_timer.start(this._ttl);

    
}


module.exports = orch;
