

var debug = require('debug')('swidbox:couchmanager');
var nano  = require('nano');
var q     = require('q');

function CouchManager(server, port) 
{
    this.server_ = server;
    this.port_   = port;
    this.nano_   = require('nano')('http://'+server+":"+port);
    debug('CouchManager started at'+this.nano_.config.url);    
}

CouchManager.prototype.createDatabase = function(name) 
{
    debug('couch create database '+name);
    var def = q.defer();
    var self = this;

    this.nano_.db.create(name, function(e, b) {
        if (e) {
            def.reject({status:e.statusCode, error:e.error, reason:e.reason});
        }

        //design
        var view_globals = function (doc) {
            if (doc.global == true)
                emit (doc.timestamp,doc._id);
        }

        //design
        var view_all = function (doc) {
            emit (doc.timestamp,doc._id);
        }
        
        //
        var view_global_content = function(doc) {
            if (doc.global == true) {
                emit (doc.timestamp, doc.content);
            }
        }

        //design
        var view_exports = function (doc) {
            emit (doc._id, doc.exports);
        }

        //design
        var view_global_exports = function (doc) {
            if (doc.global == true)
                emit (doc._id, doc.exports);
        }

        //design
        var view_nonglobal_exports = function (doc) {
            if (doc.global == false)
                emit (doc._id, doc.exports);
        }        

        var db = self.nano_.db.use(name);

        //
        //  Now lets create the views we need
        //
        db.insert( 
            { 
                views: 
                { view_globals   : { map: view_globals.toString()},
                  view_all: { map: view_all.toString()},
                  view_global_content : { map: view_global_content.toString() },
                  view_exports   : { map: view_exports.toString()},
                  view_global_exports    : { map: view_global_exports.toString()},
                  view_nonglobal_exports : { map: view_nonglobal_exports.toString()}
                }
            }, "_design/metastore", function (e,b) {
                if (e)
                    def.reject({status:e.statusCode, 
                                error:e.error, reason:e.reason});
                def.resolve('ok');
            });
    });

    return def.promise;
}

CouchManager.prototype.deleteDatabase = function(name) 
{
    debug('couch delete database '+name);
    var def = q.defer();

    this.nano_.db.destroy(name, function(e, b) {
        if (e) {
            def.reject({status:e.statusCode, error:e.error, reason:e.reason});
            return e;
        }
        def.resolve('ok');
    });

    return def.promise;
}

CouchManager.prototype.findObjectsByExport = function (db, name)
{
    debug('findObjectByExport:'+name);
    
    var def = q.defer();

    var database = this.nano_.use(db);
    
    var view = 'view_exports';

    database.view('metastore', view, function(e, b) {
        var arr = [];

        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
            return e;
        }

        var obj = {};

        var nam = [];
        for (var i in b.rows)
            for (var e in b.rows[i].value) {
                if (b.rows[i].value[e] == name) {
                    nam.push(b.rows[i].key);
                }
            }

        if (nam == undefined) {
            def.reject({status:404, 
                        error:"Not found", 
                        reason:"Not found"});
            return;
        } else {
            def.resolve(nam);
        }

    });

    return def.promise;
    
}

CouchManager.prototype.listDatabases = function() 
{
    debug('couch list databases');

    var def = q.defer();

    this.nano_.db.list(function(e, b) {
        if (e) {
            def.reject({status:e.statusCode, error:e.error, reason:e.reason});
            return e;
        }

        def.resolve(b);
    });

    return def.promise;
}


CouchManager.prototype.listAllObjects = function(db, global) 
{
    debug('listAllObjects in:'+db);
    
    var def = q.defer();

    var database = this.nano_.use(db);
    
    var view = (global == false || 
                global == undefined)?'view_all':'view_globals';

    database.view('metastore', view, function(e, b) {
        var arr = [];

        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
            return e;
        }

        for (var i in b.rows) {
            arr.push(b.rows[i].value);
        } 
        def.resolve(arr);
    });
    
    return def.promise;
}

CouchManager.prototype.listExports = function (db, global, key) 
{
    var def = q.defer();

    var database = this.nano_.use(db);
    
    var view = 'view_exports';

    if (global != undefined)
        view = (global == false)?'view_nonglobal_exports':'view_global_exports';
    
    var params = undefined;

    if (key != undefined) {
        params = {keys:[]};
        params.keys.push(key);
    }

    var fct = function(e, b) {
        var arr = [];
        
        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
            return e;
        }
        
        for (var i in b.rows) {
            arr = arr.concat(b.rows[i].value);
        } 
        
        def.resolve(arr);
    }

    if (params != undefined)
        database.view('metastore', view, params, fct);
    else 
        database.view('metastore', view, fct);

    return def.promise;
}

CouchManager.prototype.getObject = function(db, docname) 
{
    debug('get '+docname+'object in:'+db);
    
    var def = q.defer();

    var database = this.nano_.use(db);

    database.get(docname, function(e, b) {
        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
            return e;
        }
        def.resolve(b);
    });
    
    return def.promise;
}

CouchManager.prototype.getAttachment = function(db, docname) 
{
    debug('get attachment '+docname+'object in:'+db);
    
    var def = q.defer();

    var database = this.nano_.use(db);

    database.attachment.get(docname, 'source', function(e, b) {
        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
        }
        def.resolve(b);
    });
    
    return def.promise;
}

CouchManager.prototype.createObject = function(db, 
                                               docname, 
                                               metaobj, 
                                               exports) 
{
    debug('couch create document in:'+db);

    var def = q.defer();

    var database = this.nano_.use(db);

    if (metaobj.global == undefined)
        metaobj.global = true;

    database.insert ({'type':metaobj.type, 
                      'global':metaobj.global,
                      'exports':exports,
                      'timestamp':metaobj.timestamp,
                      'content':metaobj.content,
                      /* _attachments:{ 'source':{ 
                         'content_type':"text\/plain", 
                         'data':metaobj.content}}*/
                     }, docname, 
                     function(e, b) {
                         if (e) {
                             def.reject({status:e.statusCode, 
                                         error:e.error, 
                                         reason:e.reason});
                         }
                         def.resolve(b);
                     });


    return def.promise;
}

CouchManager.prototype.deleteObject = function(db, docname) 
{
    debug('delete document in:'+db);

    var def = q.defer();

    var database = this.nano_.use(db);
    
    database.head(docname, function(err, _, headers) {
        if (err) {
            def.reject({'error':err.description, 
                        'reason':err.description, 
                        'status':err.statusCode});
            return err;
        }

        database.destroy(docname, headers.etag.replace(/\"/g,""), function(err, r) {
            if (err) {
                def.reject({'error':err.error, 
                            'reason':err.reason, 
                            'status':err.statusCode});
                return err;
            }
            
            def.resolve(true);
        });
    })
    return def.promise;
}


CouchManager.prototype.viewGlobalContent = function(db) 
{
    debug('viewGlobalContent in:'+db);

    var def = q.defer();

    var database = this.nano_.use(db);
    
    var view = 'view_global_content';

    database.view('metastore', view, function(e, b) {
        var files = [];

        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
            return e;
        }

        for (var i in b.rows) {
            files.push(new Buffer(b.rows[i].value, 'base64'));
        }

        def.resolve(Buffer.concat(files));
    });


    return def.promise;
}


module.exports = CouchManager;
