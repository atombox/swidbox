var console = require("console");
var system  = require("system");


var orch = require("modules/orch")(['127.0.0.1:4001','127.0.0.1:2379'],
                                  '10.57.4.53', 6667);

var server = require("modules/stageserver")('127.0.0.1',6667);


console.writeln("[done]");

