var console       = require("console");
var system        = require("system");
var q             = require("q");

var TcpServer     = require("net").TcpServer;

var Timer = require("timers").Timer;

var __log = function(msg)
{
    console.writeln("[debug stageserver.js] "+msg);
}

function StageServer(ip, port)
{
    if (!(this instanceof StageServer)) return new StageServer(ip, port);

    //  this is some prefix
    this._etcd_prefix = "/stage/pool/";    

    //  the timeout in seconds
    this._ttl = 5;

    // address for tcp/ip binding
    this._ip = ip;
   
    // port where to listen 
    this._port = port;

    this._tcp_server = new TcpServer();
    this._tcp_server.listen(port);
    if ( !this._tcp_server.isListening() ) {
        console.error("[error] stageserver.js cannot listen to port:"+this._port);
        system.exit(0);
    }
    
    this._tcp_server.newConnection.connect( this, this.handleNewConnection);
    //this.keepAlive()
}

StageServer.prototype.handleNewConnection = function()
{
    __log("new connection");    
}

// StageServer.prototype.keepAlive = function()
// {
//     __log("orch.prototype.startKeepAlive:"+this._ttl);

//     var self = this;
    
//     self.etcdCreateDirIfNeeded().then( function() {
//         //create hostname#pid
//         self.etcdCreateNodeDirIfNeeded().then( function() {                
//             self.etcdSetStatus().then( function(d) {

//                 self._ttl_timer = undefined;
                
//                 self._ttl_timer = new Timer();
//                 self._ttl_timer.timeout.connect( self, self.keepAlive );
                
//                 self._ttl_timer.setSingleShot(true);
//                 self._ttl_timer.start(self._ttl);
//                 console.dir(system.processStats());
//             })
//         });
//     });
// }

// StageServer.prototype.nodeName = function()
// {    
//     return this._etcd_prefix+
//         system.hostname+"$"+system.pid;
// }

// StageServer.prototype.etcdSetStatus = function()
// {
//     var def = q.defer();
//     var self = this;

//     self._store.mkdir(self.nodeName(), {ttl:10, prevExist:true}, function(err,resp) {
//         def.resolve(resp);
//     });           
   
//     return def.promise;
// }

// StageServer.prototype.etcdCreateNodeDirIfNeeded = function()
// {
//     var def  = q.defer();
//     var self = this;

//     if (this._ttl_timer instanceof Timer)
//         def.resolve();
//     else {
//         self._store.mkdir(self.nodeName(), function(err,resp) {
//             self._store.set(self.nodeName()+"/"+"IP", self._ip, function(e, r) {
//                 if (e) {
//                     def.reject(new Error("cannot set key"));
//                 }
//                 self._store.set(self.nodeName()+"/"+"PORT", self._port, function(e,r) {
//                     if (e)
//                         def.reject(new Error("cannot set key"));
//                     else
//                         def.resolve();                        
//                 });
//             });
//             def.resolve();
//         });
//     }
    
//     return def.promise;
// }

// StageServer.prototype.etcdCreateDirIfNeeded = function()
// {
//     var def = q.defer();
//     var self = this;

//     if (this._ttl_timer instanceof Timer)
//         def.resolve();
//     else {
//         self._store.get(self._etcd_prefix, function(err,resp) {
//             if (JSON.parse(resp).errorCode > 0) {
//                 self._store.mkdir(self._etcd_prefix, function(err,resp) {
//                     def.resolve();
//                 });            
//             } else {
//                 def.resolve();
//             }
//         });
//     }
    
//     return def.promise;
// }

module.exports = StageServer;

