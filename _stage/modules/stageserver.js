var console       = require("console");
var system        = require("system");
var q             = require("q");
q.stopUnhandledRejectionTracking();

var TcpServer     = require("net").TcpServer;

var Timer = require("timers").Timer;

var __log = function(msg)
{
    console.writeln("[debug stageserver.js] "+msg);
}

function StageServer(orch, ip, port)
{
    if (!(this instanceof StageServer)) return new StageServer(orch, ip, port);

    //  this is some prefix
    this._etcd_prefix = "/stage/pool/";

    //  the timeout in seconds
    this._ttl = 5;

    // the stage orchestrator
    this._orch = orch;

    // address for tcp/ip binding
    this._ip  = ip;

    // port where to listen
    this._port = port;


    this._tcp_server = new TcpServer();
    this._tcp_server.listen(port);

    if ( !this._tcp_server.isListening() ) {
        console.error("[error] stageserver.js cannot listen to port:"+this._port);
        system.exit(0);
    }

    this._tcp_server.newConnection.connect( this, this.handleNewConnection);

}

StageServer.prototype.handleNewConnection = function()
{
    __log("new connection");

    var self = this;

    var client_socket = this._tcp_server.nextPendingConnection();

    client_socket.disconnected.connect(function(){
        console.log('DISCONNECTED!');
    });

    client_socket.readyRead.connect(function() {
        console.write(client_socket.read().decodeToString());
    })

    self._orch.setState('connected');
}


module.exports = StageServer;
