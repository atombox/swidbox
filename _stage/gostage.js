var console = require("console");
var system  = require("system");

var IP   = '127.0.0.1';
var PORT = 4002;

var orch = require("modules/stageorch")(['127.0.0.1:4001',
                                         '127.0.0.1:2379'],
                                        IP, PORT);


var server = require("modules/stageserver")(IP, PORT);

console.writeln("[done]");
