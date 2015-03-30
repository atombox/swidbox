

var debug = require('debug')('swidbox:stagecouchmanager');
var nano  = require('nano');
var q     = require('q');

Array.prototype.remove = function(from, to) {
  var rest = this.slice((to || from) + 1 || this.length);
  this.length = from < 0 ? this.length + from : from;
  return this.push.apply(this, rest);
};

function StageCouchManager(server, port) 
{
    this.server_   = server;
    this.port_     = port;
    this.nano_     = require('nano')('http://'+server+":"+port);
    this.stage_db_name_ = 'stageflows';

    this.createDatabase(this.stage_db_name_).then(function() {
        debug('StageCouchManager started at'+this.nano_.config.url);    
    });
}

StageCouchManager.prototype.createDatabase = function(name) 
{
    debug('couch create database '+name);
    var def = q.defer();
    var self = this;

    this.nano_.db.create(name, function(e, b) {
        def.resolve();
    });

    return def.promise;
}

// StageCouchManager.prototype.deleteDatabase = function(name) 
// {
//     debug('couch delete database '+name);
//     var def = q.defer();

//     this.nano_.db.destroy(name, function(e, b) {
//         if (e) {
//             def.reject({status:e.statusCode, error:e.error, reason:e.reason});
//             return e;
//         }
//         def.resolve('ok');
//     });

//     return def.promise;
// }


/**
 *  Gets all the flow objects for token
 */
StageCouchManager.prototype.getStageFlows = function(token) 
{
    var def = q.defer();
    var database = this.nano_.use(this.stage_db_name_);
    
    database.get(token, function(e, b) {
        if (e) {
            if (e.statusCode == 404)
                def.resolve([]);
            else {
                def.reject({status:e.statusCode, 
                            error:e.error, 
                            reason:e.reason})
                return e;            
            }
        } else 
            def.resolve(b.flows);
    });

    return def.promise;
}

StageCouchManager.prototype.deleteAllFlows = function(token)
{
    var def = q.defer();

    var database = this.nano_.use(this.stage_db_name_);
    
    database.head(token, function(err, _, headers) {
        if (err) {
            def.resolve();
            return;
        }

        database.destroy(token, headers.etag.replace(/\"/g,""), function(err, r) {
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

StageCouchManager.prototype.addStageFlow = function(token, name, flow, update) 
{
    debug('couch create document in:'+this.stage_db_name_);

    var def  = q.defer();
    var self = this;
    var database = this.nano_.use(this.stage_db_name_);

    self.getStageFlows(token).then( function(flows) {
        //
        //  We have the flows array
        //
        var found = false;
        if (flows != undefined)
            for (var i=0;i<flows.length;i++) {
                if (flows[i] != null && flows[i].name == name) {
                    if (update == true)
                        flows[i] = flow;
                    found = true;
                    break;
                }
            };

        flow.name = name;

        if (found && update != true) {
            def.reject({status:404,
                        error:'Allready exists',
                        reason:'Flow '+name+' allready exists'});
        } else if (!found && update == true) {
            def.reject({status:404,
                        error:'Flow does not exist',
                        reason:'Flow '+name+' does not exist'});
        } else {
            if (update != true)
                flows.push(flow);

            self.deleteAllFlows(token).then(function() {
                database.insert ({ 
                    'flows' : flows
                }, token,function(e, b) {
                    if (e) {
                        debug('[error] could not insert');
                        def.reject({status:e.statusCode, 
                                    error:e.error, 
                                    reason:e.reason});
                    } else {
                        def.resolve(b);
                    }
                });
            }, function(err) {
                debug('[error] could not delete all flows');

                def.reject(err);
            });
        }
    }, function(err) { 
        def.reject(err);       
    }).done();
                                         
    return def.promise;
}


StageCouchManager.prototype.deleteStageFlow = function(token, name) 
{
    debug('delete stage flow in:'+this.stage_db_name_);

    var def  = q.defer();
    var self = this;
    var database = this.nano_.use(this.stage_db_name_);

    self.getStageFlows(token).then( function(flows) {
        //
        //  We have the flows array
        //
        var found = false;
        console.dir('FLOWS!'+flows);

        for (var i=0;i<flows.length;i++) {
            if (flows[i] != null && flows[i].name == name) {
                flows.remove(i);
                found = true;
                break;
            }
        };

        if (!found) {
            def.reject({status:404,
                        error:'Flow not found',
                        reason:'Flow '+name+' not found'});
        } else {
            self.deleteAllFlows(token).then(function() {
                database.insert ({ 
                    'flows' : flows
                }, token,function(e, b) {
                    if (e) {
                        debug('[error] could not insert');
                        def.reject({status:e.statusCode, 
                                    error:e.error, 
                                    reason:e.reason});
                    } else {
                        def.resolve(b);
                    }
                });
            }, function(err) {
                debug('[error] could not delete all flows');

                def.reject(err);
            });
        }
    }, function(err) { 
        def.reject(err);       
    }).done();
                                         
    return def.promise;
}



    // StageCouchManager.prototype.viewGlobalContent = function(db) 
    // {
    //     debug('viewGlobalContent in:'+db);

    //     var def = q.defer();

    //     var database = this.nano_.use(db);
    
    //     var view = 'view_global_content';

    //     database.view('metastore', view, function(e, b) {
    //         var files = [];

    //         if (e) {
    //             def.reject({status:e.statusCode, 
    //                         error:e.error, 
    //                         reason:e.reason})
    //             return e;
    //         }

    //         for (var i in b.rows) {
    //             files.push(new Buffer(b.rows[i].value, 'base64'));
    //         }

    //         def.resolve(Buffer.concat(files));
    //     });


    //     return def.promise;
    // }


    module.exports = StageCouchManager;
