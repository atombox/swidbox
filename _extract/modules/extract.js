
var console     = require("console");
var system      = require("system");
var q           = require("q");
q.stopUnhandledRejectionTracking();

var EventEmitter = require('events').EventEmitter;

var StageClient = require("stagecli");

var __log = function(msg)
{
    console.writeln("[debug extorch.js] "+msg);
}

function Extractor(orch, stagepeer)
{
    if (!(this instanceof Extractor)) return new Extractor(orch, stagepeer);

    __log("function Extractor(orch, stagepeer)");

    this._orch        = orch;
    this._stagepeer   = stagepeer;
    this._stageclient = undefined;
}

Extractor.prototype.__proto__ = EventEmitter.prototype;


Extractor.prototype.init = function()
{
    __log("Extractor.prototype.init");

    var def = q.defer();
    var self = this;

    this._orch.getNode(this._stagepeer, {recursive:true, sorted:true}).then(
        function(r) {

            var IP   = undefined;
            var PORT = undefined;

            if (!r.node.nodes)
                def.reject(new Error("not ready"));
            else {
                for (var i=0; i<r.node.nodes.length;i++) {
                    var kp = r.node.nodes[i].key.split(/\//);
                    if (kp[kp.length-1] == "IP") {
                        IP = r.node.nodes[i].value;
                    } else if (kp[kp.length-1] == "PORT") {
                        PORT = r.node.nodes[i].value;
                    } else {
                        console.error("Unknown key in stager");
                        system.exit(0);
                    }
                }

                __log("peer ip  :"+IP);
                __log("peer port:"+PORT);

                console.assert(IP   != undefined, "ip cannot be undefined");
                console.assert(PORT != undefined, "port cannot be undefined");

                self._stageclient = new StageClient(IP, PORT);

                self._stageclient.on('disconnected', function() {
                    self._orch.setState('discover');
                    self.emit('disconnected');
                });

                self._stageclient.connectToStage().then( function(d) {
                    self._orch.setState('connected');
                    def.resolve();
                }, function(e) {
                    def.reject();
                });
            }
        }, function(e) {
            def.reject(new Error(e));
        });

    return def.promise;
}

Extractor.prototype.destroy = function()
{
    __log("Extractor.prototype.destroy");

    var self = this;

    if (self._stageclient !== undefined) {
      self._stageclient.disconnectSocket();
      self._stageclient = undefined;
    }
}

Extractor.prototype.bootstrap = function()
{
    __log("Extractor.prototype.bootstrap");

    
}


module.exports = Extractor;
