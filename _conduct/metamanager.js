

var debug = require('debug')('swidbox:metamanager');
var nano  = require('nano');
var q     = require('q');
var temp  = require("temp").track();
var fs    = require("fs");
var exec  = require('child_process').exec;

//Operations on /metastore/{StoreId}/globals/{GlobalObject}
function MetaManager(atombox_path) 
{
    debug('MetaManager started:'+atombox_path);

    this.atombox_path_                 =  atombox_path;
    this.atombox_temp_global_ddl_js_   = 'temp_global_abscript_ddl.js';
}

/**
 * @returns {MetaObject}
 */
MetaManager.prototype.findObjectsByExport = function( storeid, name )
{
    debug('MataManager findObjectByExport::'+name);

    var self  = this;
    var defer = q.defer();
    
    if (name == undefined) {
        defer.reject({status:400, error:"Not found", 
                    reason:"name query not provided"});
        return;
    }

    GLOBAL.metaCouchManager.findObjectsByExport(storeid, name)
        .then( function(arr) {
            defer.resolve({'status':200, 'body':arr});
        }, function (rej) {
            defer.reject(rej); 
        }).done();

    return defer.promise;
}

/**
 * @returns {MetaObject}
 */
MetaManager.prototype.listAllObjects = function( storeid, global )
{
    debug('listAllGlobalObjects');

    var self  = this;
    var defer = q.defer();
    
    GLOBAL.metaCouchManager.listAllObjects(storeid, global)
        .then( function(d) {
            defer.resolve({'status':200, 'body':d});
        }, function(e) {
            defer.reject(e); 
        }).done();

    return defer.promise;
}

/**
 * @returns {MetaObject}
 */
MetaManager.prototype.listExports = function( storeid, global, key )
{
    debug('listAllGlobalObjects');

    var self  = this;
    var defer = q.defer();
    
    GLOBAL.metaCouchManager.listExports(storeid, global, key)
        .then( function(d) {
            defer.resolve({'status':200, 'body':d});
        }, function(e) {
            defer.reject(e); 
        }).done();

    return defer.promise;
}

/**
 * @returns {MetaObject}
 */
MetaManager.prototype.getMetaObjectByName = function( storeid, name )
{
    debug('getMetaObjectByName '+name);

    var self  = this;
    var defer = q.defer();
    
    GLOBAL.metaCouchManager.getObject(storeid, name)
        .then( function(d) {
            var metaobj = {};
            metaobj.exports = d.exports;
            metaobj.type    = d.type;
            metaobj.global  = d.global;
            metaobj.content = d.content;
            // GLOBAL.metaCouchManager.getAttachment(storeid, name).then(function(d) {
            //     metaobj.content = d.toString('base64');
            //     defer.resolve({'status':200, 'body':metaobj});

            // }, function(e) {
            //     console.error(e);
            //     defer.reject(e);                 
            // });
            defer.resolve({'status':200, 'body':metaobj});
        }, function(e) {
            defer.reject(e); 
        }).done();

    return defer.promise;
}

/**
 * @arg {String}     id
 * @arg {MetaObject} metaobj
 * @return promise
 */
MetaManager.prototype.createMetaObject = function( storeid,  /*string*/
                                                   name,     /*string*/
                                                   metaobj   /*MetaObject*/)
{
    debug('createGlobalObject ('+storeid+","+name+","+metaobj+")");
    var self  = this;
    var defer = q.defer();
    
    if (storeid == undefined || name == undefined || metaobj == undefined) {
        defer.reject({status:400, error:"Invalid param", 
                      reason:'Missing Parameter'});
    }

    if ( metaobj.type != 'ddl' &&
         metaobj.type != 'mdbcsv') {

        defer.reject({ status:400, error: "Invalid param", 
                       reason:"metaobj.type must be 'ddl' for /globals'"});
    }

    metaobj.timestamp = new Date();

    self.mergeAllGlobals(storeid).then (function (global_buffer) {
        self.atomboxDDLEvaluate(name, global_buffer, 
                                metaobj.content).then(function(r) {        
                                    //
                                    //  All OK so let's modify the DB
                                    //
                                    GLOBAL.metaCouchManager.createObject(storeid, name, metaobj, r)
                                        .then( function(d) {
                                            defer.resolve({status:200, 'exports':r});
                                            temp.cleanup();
                                        }, function(e) {
                                            console.dir(e);
                                            defer.reject(e); 
                                        }).done();
                                    
                                }, function(e) {
                                    var line   = -1;
                                    var column = -1;

                                    if ((marr = e.match(/[0-9]+:[0-9]+/gi)) != null) {
                                        var arr = marr[0].split(':');
                                        line    = parseInt(arr[0]);
                                        column  = parseInt(arr[1]);
                                    }

                                    defer.reject({status:401, error:e,
                                                  line:line,
                                                  column:column});

                                });
    }, function(e) {
        defer.reject(e);
    });

    return defer.promise;
}

/**
 * @arg {String}     id
 * @arg {MetaObject} metaobj
 * @return promise
 */
MetaManager.prototype.deleteMetaObject = function( storeid, /*string*/
                                                   name    /*string*/ )
{
    debug('deleteGlobalObject ('+storeid+","+name+")");

    var self  = this;
    var defer = q.defer();
    if (storeid == undefined || name == undefined) {
        defer.reject({status:400, error:"Invalid param", 
                      reason:'Missing Parameter'});
    }
    
    //
    //  All OK so let's modify the DB
    //
    GLOBAL.metaCouchManager.deleteObject(storeid, name)
        .then( function(d) {
            defer.resolve({status:200});
        }, function(e) {
            console.dir(e);
            defer.reject(e); 
        }).done();

    return defer.promise;
}


MetaManager.prototype.atomboxDDLEvaluate = function( name, global_buffer, code )
{
    debug('atombox evaluate:'+name);

    var defer = q.defer();
    var self = this;
    temp.open('__global__', function(err, ginfo) {
        console.log(global_buffer.length);      
        try {            
            fs.write(ginfo.fd, global_buffer,0, global_buffer.length, 0,  
                     function (err, data) {

                         fs.close(ginfo.fd, function() {
                             temp.open(name, function(err, info) {
                                 fs.write(info.fd, code, 0, 'base64', function(err, data) {
                                     if (err) {
                                         throw err;
                                     }

                                     fs.close(info.fd, function(err) {
                                         debug(self.atombox_path_+ " "
                                               +self.atombox_temp_global_ddl_js_+
                                               " "+ginfo.path+
                                               " "+info.path);
                                         
                                         exec(self.atombox_path_+ " "+
                                              self.atombox_temp_global_ddl_js_+
                                              " "+ginfo.path+
                                              " "+info.path, {
                                                  maxBuffer : 1024*1024,
                                                  
                                              }, function( err, 
                                                           stdout, 
                                                           stderr ) {
                                                  
                                                  if (err) {
                                                      console.dir(err);
                                                  }
                                                  console.log(stderr);
                                                  var result = self.atomboxParseOutput(stderr);
                                                  if (result.error != undefined) {
                                                      defer.reject(result.error);
                                                  } else {                             
                                                      defer.resolve(result.exports);
                                                  }
                                              });
                                     });
                                 });
                             });

                         }) 
                     });} catch(e) {
                         console.dir(e);
                     }
    });

    return defer.promise;
}

MetaManager.prototype.atomboxParseOutput = function( output )
{
    if (output != undefined && output.toString().replace(/ /gi,"").length == 0) {
        return {'error':'Fatal error - Atombox failed to start!'};
    }


    var exp = [];
    var matches = output.match(/ \w+: \[Function\]/gi);
    if (matches != null) {
        for (var m=0; m<matches.length;m++) {
            matches[m] = matches[m].toString().replace(": [Function]", "").replace(' ',"");
            exp.push(matches[m]);
        }

        return {'exports': exp};
    }
    matches = output.match(/file:.*:[0-9]+:[0-9]+.*/gi);
    if (matches == null)
        matches = output.match(/ddl parse error.*\.\.\. .*/gi);

    if (matches != null) {
        debug('atomboxParseOutput:'+"exports:"+exp+",errors:"+matches[0]);
        return {'error':matches[0].toString().replace(/file\:/gi,"")
                .replace(/ddl parse error.*\.\.\. /gi,"")};
    } else {
        return {'exports':[]};
    }
}

MetaManager.prototype.mergeAllGlobals = function(storeid)
{
    debug('Merge all globals');

    var defer = q.defer();
    var self = this;

    GLOBAL.metaCouchManager.viewGlobalContent(storeid).then(function(buffer) {
        defer.resolve(buffer);
    }, function(e) {
        defer.reject(e);
    });

    return defer.promise;
}


module.exports = MetaManager;
