//require('./globals');

var fs = require('fs');
var path = require('path');
var express    = require('express');
var bodyParser = require('body-parser');
//var multer     = require('multer'); 

var compression = require('compression');
var cookieParser = require('cookie-parser');
var expressBeautify = require('express-beautify')();
var swaggerize = require('swaggerize-express');

var app = express();

app.use(bodyParser.json({limit: '50mb'}));
app.use(bodyParser.urlencoded({ extended: true })); 
//app.use(multer()); 

//swidbox classes
var CouchManager = require("./couchmanager.js");
var MetaManager  = require('./metamanager.js');
GLOBAL.couchManager = new CouchManager('10.57.4.72', 9726);
GLOBAL.metaManager  = new MetaManager('C:\\tmpuser\\tools\\work\\_git\\atomboxer_windows\\install\\atombox\\packages\\com.atomboxer.atombox\\data\\bin\\ab.exe');

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
