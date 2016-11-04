var console = require("console");
var system  = require("system");

var IP   = '127.0.0.1';
var PORT = 8888;

var orch = require("modules/stageorch")(['127.0.0.1:8084',
                                         '127.0.0.1:4001'],
                                        IP, PORT);


var server = require("modules/stageserver")(orch, IP, PORT);

console.writeln("[done]");
