

var debug = require('debug')('swidbox:stageflow');
var nano  = require('nano');
var q     = require('q');

function StageFlowManager(etcd) 
{
    debug('StageFlowManager started:');

    if (!(this instanceof StageFlowManager)) return new StageFlowManager(etcd);

    //  etcd object
    this.store_ = require("etcdjs")(etcd);

    //  this is some prefix
    this.etcd_prefix_ = "/stageflows";

    this.initEtcd();
}

StageFlowManager.prototype.initEtcd = function()
{
    //var defer = q.defer();
    //var self  = this;
    return this.etcdCreateDirIfNeeded(this.etcd_prefix_);
}

StageFlowManager.prototype.etcdCreateDirIfNeeded = function(dir)
{
    debug('etcdCreateDirIfNeeded::'+dir);

    var def  = q.defer();
    var self = this;
    
    self.store_.get(dir, function(er,re) {        
        if (re == undefined)
            self.store_.mkdir(dir, function(err,resp) {
                def.resolve();
            });          
        else {
            if (er)
                def.reject(er);
            else
                def.resolve();
        }
    });

    return def.promise;
}

StageFlowManager.prototype.etcdAddStageFlow = function(token, name, flow)
{
    debug('etcdAddStageFlow::'+token+"::"+name+"::");

    var defer  = q.defer();
    var self   = this;
    
    self.etcdCreateDirIfNeeded(self.etcd_prefix_+"/"+token).then( function() {
        self.store_.set(self.etcd_prefix_+"/"+token+"/"+name, 
                        JSON.stringify(flow), function(e, r) {
                            if (e) {
                                defer.reject({'error':501, 
                                              'reason':'Unable to set etcd key', 
                                              'status':'Unable to set etcd key'});
                                return;
                            }
                            defer.resolve();
                        });
    }, function(err) {
        defer.reject({'error':501, 
                      'reason':'etcd server Error', 
                      'status':'etcd server error'});        
    });
    
    return defer.promise;
}

StageFlowManager.prototype.etcdUpdateStageFlow = function(token, name, flow)
{
    debug('etcdUpdateStageFlow::'+token+"::"+name+"::");

    var defer  = q.defer();
    var self   = this;
    
    self.etcdCreateDirIfNeeded(self.etcd_prefix_+"/"+token).then( function() {
        self.store_.update(self.etcd_prefix_+"/"+token+"/"+name, 
                        JSON.stringify(flow), function(e, r) {
                            if (e) {
                                defer.reject({'error':501, 
                                              'reason':'Unable to set etcd key', 
                                              'status':'Unable to set etcd key'});
                                return;
                            }
                            defer.resolve();
                        });
    }, function(err) {
        defer.reject({'error':501, 
                      'reason':'etcd server Error', 
                      'status':'etcd server error'});        
    });
    
    return defer.promise;
}

StageFlowManager.prototype.etcdDeleteStageFlow = function(token, name, flow)
{
    debug('etcdDeleteStageFlow::'+token+"::"+name+"::");

    var defer  = q.defer();
    var self   = this;
    
    self.etcdCreateDirIfNeeded(self.etcd_prefix_+"/"+token).then( function() {
        self.store_.delete(self.etcd_prefix_+"/"+token+"/"+name, 
                        JSON.stringify(flow), function(e, r) {
                            if (e) {
                                defer.reject({'error':501, 
                                              'reason':'Unable to set etcd key', 
                                              'status':'Unable to set etcd key'});
                                return;
                            }
                            defer.resolve();
                        });
    }, function(err) {
        defer.reject({'error':501, 
                      'reason':'etcd server Error', 
                      'status':'etcd server error'});        
    });
    
    return defer.promise;
}

StageFlowManager.prototype.createStageFlow = function( token, name, flow )
{
    debug('StageFlowManager::{token}='+token+"{name}="+name);

    var defer = q.defer();
    var self  = this;

    
    self.validateStageFlowObject(flow).then( function() {
        //
        // Validation is done now, add it to couch
        //
        GLOBAL.stageCouchManager.addStageFlow(token, name, flow, false).then(function(ok) {
            self.etcdAddStageFlow(token, name, flow).then( function() {
                defer.resolve({status:200, body:true});
            }, function(err) {
                defer.reject(err);
            });
        }, function(err) {
            defer.reject(err);
        });

    }, function(err) {
        defer.reject(err);
    });
    
    return defer.promise;
}


StageFlowManager.prototype.updateStageFlow = function( token, name, flow )
{
    debug('StageFlowManager::{token}='+token+"{name}="+name);

    var defer = q.defer();
    var self  = this;

    self.validateStageFlowObject(flow).then( function() {
        //
        // Validation is done now, add it to couch
        //
        GLOBAL.stageCouchManager.addStageFlow(token, name, flow, true).then(function(ok) {           
            self.etcdUpdateStageFlow(token, name, flow).then( function() {
                defer.resolve({status:200, body:true});
            }, function(err) {
                defer.reject(err);
            });
        }, function(err) {
            defer.reject(err);
        });
    }, function(err) {
        defer.reject(err);
    });
    
    return defer.promise;
}

StageFlowManager.prototype.deleteStageFlow = function( token, name)
{
    debug('StageFlowManager deleteStageFlow::{token}='+token+"{name}="+name);

    var defer = q.defer();
    var self  = this;

    GLOBAL.stageCouchManager.deleteStageFlow(token, name).then(function(ok) {           
            self.etcdDeleteStageFlow(token, name).then( function() {
                defer.resolve({status:200, body:true});
            }, function(err) {
                defer.reject(err);
            });
        }, function(err) {
            defer.reject(err);
        });
    return defer.promise;
}


/**
 *  @arg flow {StageFlow}
 */
StageFlowManager.prototype.validateStageFlowObject = function( flow ) 
{
    //file, type, timer, meta_storeid, meta_object_name, meta_export

    var defer = q.defer();
    var self  = this;

    if (flow.type == 'unstructured') 
        defer.resolve();
    else
        GLOBAL.metaCouchManager.findObjectsByExport(flow.meta_storeid,
                                                    flow.meta_export).then( 
                                              function(obj) {
                                                  var found = false;
                                                  obj.map(function(it) {
                                                      if (it == flow.meta_object_name)
                                                          found = true;
                                                  });
                                                  
                                                  if (found)
                                                      defer.resolve()
                                                  else
                                                      defer.reject({status:404, 
                                                                    error:'Not found', 
                                                                    reason:(flow.meta_object_name+
                                                                            ' was not found')});
                                                  
                                               }, function(err) {
                                                   defer.reject(err);
                                               }).done();
    
    return defer.promise;
}

module.exports = StageFlowManager;
