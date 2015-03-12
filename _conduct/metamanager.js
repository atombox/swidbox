

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

    this.atombox_path_                 = atombox_path;
    this.atombox_temp_global_ddl_js_   = 'temp_global_abscript_ddl.js';
}

/**
 * @returns {MetaObject}
 */
MetaManager.prototype.findObjectByExport = function( storeid, name )
{
    debug('findObjectByExport');

    var self  = this;
    var defer = q.defer();
    
    if (name == undefined) {
        def.reject({status:400, error:"Not found", 
                    reason:"name query not provided"});
        return;
    }

    GLOBAL.couchManager.findObjectNameByExport(storeid, name)
        .then( function(n) {
            self.getMetaObjectByName(storeid, n).then(function (ok) {
                defer.resolve(ok);
            }, function (rej) {
                defer.reject(rej); 
            });
        }, function(e) {
            defer.reject(e); 
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
    
    GLOBAL.couchManager.listAllObjects(storeid, global)
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
    
    GLOBAL.couchManager.listExports(storeid, global, key)
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
    
    GLOBAL.couchManager.getObject(storeid, name)
        .then( function(d) {
            var metaobj = {};
            metaobj.exports = d.exports;
            metaobj.type    = d.type;
            metaobj.global  = d.global;
            GLOBAL.couchManager.getAttachment(storeid, name).then(function(d) {
                metaobj.content = d.toString('base64');
                defer.resolve({'status':200, 'body':metaobj});

            }, function(e) {
                console.error(e);
                defer.reject(e);                 
            });
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

    self.mergeAllGlobals(storeid).then (function (global_content) {
        self.atomboxDDLEvaluate(name, global_content, 
                                metaobj.content).then(function(r) {        
            //
            //  All OK so let's modify the DB
            //
            GLOBAL.couchManager.createObject(storeid, name, metaobj, r)
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
    GLOBAL.couchManager.deleteObject(storeid, name)
        .then( function(d) {
            defer.resolve({status:200});
        }, function(e) {
            console.dir(e);
            defer.reject(e); 
        }).done();

    return defer.promise;
}


MetaManager.prototype.atomboxDDLEvaluate = function( name, global_code, code )
{
    debug('atombox evaluate:'+name);

    var defer = q.defer();
    var self = this;
    temp.open('__global__', function(err, ginfo) {
        fs.write(ginfo.fd, global_code, 0, 'base64', function (err, data) {
            fs.close(ginfo.fd, function() {
                temp.open(name, function(err, info) {
                    if (!err) {
                        fs.write(info.fd, code, 0, 'base64', function(err, data) {
                            if (err) {
                                throw err;
                            }
                            fs.close(info.fd, function(err) {
                                debug(self.atombox_path_+ " "+self.atombox_temp_global_ddl_js_+
                                      " "+ginfo.path+
                                      " "+info.path);
                                
                                exec(self.atombox_path_+ " "+self.atombox_temp_global_ddl_js_+
                                     " "+ginfo.path+
                                     " "+info.path, function( err, 
                                                              stdout, 
                                                              stderr ) {
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
                    } else {
                        throw new Error(err);
                    }
                });

            })
        })
    });

    return defer.promise;
}

MetaManager.prototype.atomboxParseOutput = function( output )
{
    console.log('output:'+output);

    if (output != undefined && output.toString().replace(/ /gi,"").length == 0) {
        return {'error':'Fatal error - Atombox failed to start!'};
    }


    var exp = [];
    var matches = output.match(/ \w+: \[Function\]/gi);
    if (matches != null) {
        for (var m in matches) {
            matches[m] = matches[m].replace(": [Function]", "").replace(' ',"");
            exp.push(matches[m]);
        }

        return {'exports': exp};
    }

    matches = output.match(/file:.*:[0-9]+:[0-9]+.*/gi);
    if (matches == null)
        matches = output.match(/ddl parse error.*\.\.\. .*/gi);

    if (matches != null) {
        debug('atomboxParseOutput:'+"exports:"+exp+",errors:"+matches[0]);
        return {'error':matches[0].replace(/file\:/gi,"")
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

    this.listAllObjects(storeid,true/*globals*/).then( function (obj) {
        var objects = obj.body;

        if (objects.length == undefined) 
            throw Error('objects.length should not be undefined');
        
        if (objects.length == 0) {
            defer.resolve('');
        } else {   
            try {
                var promises = [];
                var buffers  = [];

                function getGlobalContent(idx) {
                    try {
                        var def = q.defer();
                        self.getMetaObjectByName(storeid, objects[idx]).then (
                            function(o) {
                            buffers.push(new Buffer(o.body.content,'base64'));
                            def.resolve(idx+1);
                        }, function(e) {                            
                            console.log(e);
                        });
                    } catch(e) {
                        console.log(e);
                    }
                    return def.promise;
                }

                for (var i=0;i<objects.length;i++) {
                    promises.push(getGlobalContent);
                }

                var result = q(0);

                for (var i=0;i<promises.length; i++) {
                    result = result.then(promises[i]);
                }

                result.then( function( ok ) {
                    defer.resolve(Buffer.concat(buffers).toString('base64'));
                });

            } catch(e) {
                console.error(e);
            }
        }        
    }, function(e) {
        defer.reject(e);
    });

    return defer.promise;
}


module.exports = MetaManager;
