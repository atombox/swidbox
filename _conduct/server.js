//require('./globals');

var fs = require('fs');
var path = require('path');
var express    = require('express');
var bodyParser = require('body-parser');
//var multer     = require('multer');

var compression     = require('compression');
var cookieParser    = require('cookie-parser');
var expressBeautify = require('express-beautify')();
var swaggerize      = require('swaggerize-express');

var app = express();

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({ extended: true }));
//app.use(multer());

//swidbox classes
var MetaCouchManager      = require("./metacouchmanager.js");
var MetaManager           = require('./metamanager.js');
var StageFlowManager      = require('./stageflowmanager.js');
var StageCouchManager     = require('./stagecouchmanager.js');

GLOBAL.metaCouchManager  = new MetaCouchManager ('10.57.4.72', 9726);
GLOBAL.stageCouchManager = new StageCouchManager('10.57.4.72', 9726);


GLOBAL.metaManager       = new MetaManager('C:\\tmpuser\\tools\\work\\_git\\atomboxer_windows\\bin\\ab.exe');
GLOBAL.stageFlowManager  = new StageFlowManager(['127.0.0.1:4001',
                                                 '127.0.0.1:2379']);


app.use(compression());
app.use(cookieParser());
app.use(swaggerize({
    api: path.resolve('../RESTAPI/metastore.yml'),
    handlers: path.resolve('./rest_handlers')
}));

var server = app.listen(3000, function() {
    try {
        console.log('CONNECTED');
    } catch(e) {console.log(e);}
});

process.on('uncaughtException', function(err) {
    console.log(arguments);
    process.exit(0);
});
