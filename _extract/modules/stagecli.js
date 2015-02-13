
var console           = require("console");
var system            = require("system");
var q                 = require("q");

var TcpSocket         = require("net").TcpSocket;

var __log = function(msg)
{
    console.writeln("[debug stagecli.js] "+msg);
}

function StageClient(ip, port)
{
    if (!(this instanceof StageClient)) return new StageClient(ip, port);
    
    this._ip   = ip;
    this._port = port;
}

StageClient.prototype.connectToStage = function()
{    
    __log("stageclient connecting to:"+this._ip+":"+this._port);
    
    var def = q.defer();

    this.connectSocket().then( function(d) {
        console.writeln("promise resolved");
        def.resolve();
    }, function(e) {
        console.writeln("connection failed");
        def.reject();
    });

    return def.promise;
}

StageClient.prototype.connectSocket = function() 
{
    var def = q.defer();

    this._socket = undefined;
    this._socket = new TcpSocket();
    
    this._socket.connected.connect(this, function() {
        console.log("StageClient.prototype.connectSocket.connected");
        def.resolve();
    });

    this._socket.disconnected.connect(this, function() {
        console.log("StageClient.prototype.connectSocket.disconnect");
        def.reject(new Error("disconnected"));
    });

    this._socket.error.connect(this, function() {
        console.log("StageClient.prototype.connectSocket.error");
        def.reject(new Error(this._socket.errorString()));
    });
    
    //go go go
    this._socket.connectToHost(this._ip, parseInt(this._port));
    
    return def.promise;
}

StageClient.prototype.handshake = function()
{

}

module.exports = StageClient;

