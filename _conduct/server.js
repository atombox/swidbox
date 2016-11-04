//require('./globals');

var fs = require('fs');
var path = require('path');
var express    = require('express');
var bodyParser = require('body-parser');
var cors       = require('cors');
//var multer     = require('multer');

var compression     = require('compression');
var cookieParser    = require('cookie-parser');
var expressBeautify = require('express-beautify')();
var swaggerize      = require('swaggerize-express');

var app = express();

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());
//app.use(multer());

//swidbox classes
var MetaCouchManager      = require("./metacouchmanager.js");
var MetaManager           = require('./metamanager.js');
var StageFlowManager      = require('./stageflowmanager.js');
var StageCouchManager     = require('./stagecouchmanager.js');

GLOBAL.metaCouchManager  = new MetaCouchManager ('127.0.0.1', 8083);
GLOBAL.stageCouchManager = new StageCouchManager('127.0.0.1', 8083);


GLOBAL.metaManager       = new MetaManager
             ('ASAN_SYMBOLIZER_PATH=/usr/bin/llvm-symbolizer '+
             ' ASAN_OPTIONS=symbolize=1'+
             ' LD_LIBRARY_PATH=/home/ec2-user/_git/atombox/install/0.5/bin:'+
             '$LD_LIBRARY_PATH /home/ec2-user/_git/atombox/install/0.5/bin/ab');

GLOBAL.stageFlowManager  = new StageFlowManager(['127.0.0.1:8084',
                                                 '127.0.0.1:4001']);


app.use(compression());
app.use(cookieParser());

app.use(swaggerize({
    api: path.resolve('../RESTAPI/metastore.yml'),
    handlers: path.resolve('./rest_handlers')
}));

var server = app.listen(8088, function() {
    try {
        console.log('CONNECTED');
    } catch(e) {console.log(e);}
});

process.on('uncaughtException', function(err) {
    console.log(arguments);
    process.exit(0);
});
