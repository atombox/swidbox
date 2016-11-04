var console = require("console");
var system = require("system");
var q = require("q");

var TcpSocket = require("net").TcpSocket;
var EventEmitter = require('events').EventEmitter;

var __log = function(msg) {
    console.writeln("[debug stagecli.js] " + msg);
}

//
//   emits 'disconnected'
//
function StageClient(ip, port) {
    if (!(this instanceof StageClient)) return new StageClient(ip, port);

    this._ip = ip;
    this._port = port;
    this._socket = undefined;

    this._slot_connected = undefined;
    this._slot_disconnected = undefined;
    this._slot_error = undefined;
}

StageClient.prototype.__proto__ = EventEmitter.prototype;

StageClient.prototype.connectToStage = function() {
    __log("stageclient connecting to:" + this._ip + ":" + this._port);

    var def = q.defer();

    this.connectSocket().then(function(d) {
        __log("connected to stage agent");
        def.resolve();
    }, function(e) {
        __log("connection to stage agent failed");
        def.reject();
    });

    return def.promise;
}

StageClient.prototype.connectSocket = function() {
    __log("StageClient.prototype.connectSocket");

    var def = q.defer();
    var self = this;

    this._socket = new TcpSocket();

    this._socket.connected.connect(self._slot_connected = function() {
        console.log("StageClient.prototype.connectSocket.connected");
        def.resolve();
    });

    this._socket.disconnected.connect(self._slot_disconnected = function() {
        __log("StageClient.prototype.connectSocket.disconnected");
        self.emit('disconnected');
    });

    this._socket.error.connect(self._slot_error = function() {
        def.reject(new Error(this._socket.errorString()));
    });


    //go go go
    this._socket.connectToHost(this._ip, parseInt(this._port));

    return def.promise;
}

StageClient.prototype.disconnectSocket = function() {
    __log("StageClient.prototype.disconnectSocket");

    var self = this;

    if (this._socket == undefined)
        return;

    self._socket.disconnectFromHost();

    this._socket.disconnected.disconnect(self._slot_disconnected);
    this._socket.error.disconnect(self._slot_error);
    this._socket.connected.disconnect(self._slot_connected);

    self._socket.close();
    self._socket = undefined;
}

StageClient.prototype.sendMessage = function(msg) {
    this._socket.write(msg.toByteArray());
}

module.exports = StageClient;
