

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
        var list_globals = function (doc) {
            if (doc.global == true)
                emit (doc.timestamp,doc._id);
        }

        //design
        var list_all = function (doc) {
            emit (doc.timestamp,doc._id);
        }

        //design
        var list_exports = function (doc) {
            emit (doc._id, doc.exports);
        }

        //design
        var list_global_exports = function (doc) {
            if (doc.global == true)
                emit (doc._id, doc.exports);
        }

        //design
        var list_nonglobal_exports = function (doc) {
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
                { list_globals   : { map: list_globals.toString()},
                  list_all: { map: list_all.toString()},
                  list_exports   : { map: list_exports.toString()},
                  list_global_exports    : { map: list_global_exports.toString()},
                  list_nonglobal_exports : { map: list_nonglobal_exports.toString()}
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

CouchManager.prototype.findObjectNameByExport = function (db, name)
{
    debug('findObjectByExport:'+name);
    
    var def = q.defer();

    var database = this.nano_.use(db);
    
    var view = 'list_exports';


    database.view('metastore', view, function(e, b) {
        var arr = [];

        if (e) {
            def.reject({status:e.statusCode, 
                        error:e.error, 
                        reason:e.reason})
            return e;
        }

        var obj = {};

        var nam = undefined;
        for (var i in b.rows)
            for (var e in b.rows[i].value) {
                if (b.rows[i].value[e] == name) {
                    nam = b.rows[i].key;
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
                global == undefined)?'list_all':'list_globals';

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
    
    var view = 'list_exports';

    if (global != undefined)
        view = (global == false)?'list_nonglobal_exports':'list_global_exports';
    
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
                      _attachments:{ 'source':{ 
                          'content_type':"text\/plain", 
                          'data':metaobj.content}}}, docname, 
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



module.exports = CouchManager;
