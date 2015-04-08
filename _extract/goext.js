var console = require("console");
var system  = require("system");

var log = function(msg)
{
    console.log("[log] "+msg);
}

var TOKEN   = "token123";
var orch    = require("modules/extorch")(
    ['127.0.0.1:4001','127.0.0.1:2379'], TOKEN);

var extractor = undefined;

var OK = false;

function go() {
    orch.waitForDiscoverState().then( function() { 
        log('All flows loaded and checked!');
        orch.getNextStageAgentFromPool().then( function(d) {
            log("Stage peer found:"+d);
            extractor =  (require("modules/extract"))(orch, d);
            
            extractor.init().then(function(r) {
                log("connection established");
                try {
                } catch(e) {
                    console.error(e);
                    system.exit(0);
                }
                OK = true;
            }, function(e) {
                log("Stage peer not ready. Go again.");
                go();
                OK = false;
            });
            
        }, function(e) {
            console.error(e);
            system.exit(0);
        });        
    })
}

go();

console.writeln("[-]");
