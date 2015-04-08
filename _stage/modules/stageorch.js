var console = require("console");
var system  = require("system");
var q       = require("q");

var Timer = require("timers").Timer;

var __log = function(msg)
{
    console.writeln("[debug orch.js] "+msg);
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

    this.keepAlive()
}

StageOrch.prototype.keepAlive = function()
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
                //console.dir(system.processStats());                
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

StageOrch.prototype.etcdSetStatus = function()
{
    var def  = q.defer();
    var self = this;

    self._store.mkdir(self.nodeName(), {ttl:this._ttl*2, prevExist:true}, function(err,resp) {

        if (err) {
            console.error('Unable to set the etcd token. Process exists!');
            system.exit(0);
        }

        self._store.set(self.nodeName()+"/"+"IP", self._ip, function(e, r) {
            if (e) {
                console.dir(e);
                def.reject(new Error("cannot set key:"+self.nodeName()+"/"+"IP"));
            }
            self._store.set(self.nodeName()+"/"+"PORT", self._port, function(e,r) {
                if (e) {
                    console.dir(e);
                    def.reject(new Error("cannot set key:"+self.nodeName()+"/"+"PORT"));
                } else
                    def.resolve();                        
            });
        });        
    });
   
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

