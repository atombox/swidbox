var console = require("console");
var system  = require("system");

var q = require("q");
q.stopUnhandledRejectionTracking();

var log = function(msg)
{
    console.log("[log] "+msg);
};

var TOKEN   = "token123";
var orch    = require("modules/extorch")(
    ['127.0.0.1:8084','127.0.0.1:4001'], TOKEN);

var extractor = undefined;

function go() {
    orch.waitForDiscoverState().then( function() {
        log('All flows loaded and checked!');
        orch.clearLastEtcdMessage();
        orch.setState('discover');

        orch.getNextStageAgentFromPool().then( function(d) {
            log("Stage peer found:"+d);
            extractor =  (require("modules/extract"))(orch, d);

            extractor.on('disconnected', function() {
                console.log('Extractor disconnected');
                extractor.destroy();
                extractor = undefined;
                go();
            });

            orch.on('stage_changed', function() {
               log('STAGE CHANGED, go again');
               orch.setState('discover');
               extractor.bootstrap();
            });

            extractor.init().then( function(r) {
                log("connection established");
                //extractor.bootstrap().then(function() {
                //        log('bootstrap successfull');
                //    }, function(err) {
                //
                //    }
                //});

            }, function(e) {
                log("Stage peer not ready. Go again.");
                go();
            });

        }, function(e) {
            console.error(e);
            system.exit(0);
        });
    });
}

go();

// console.writeln("[-]");
