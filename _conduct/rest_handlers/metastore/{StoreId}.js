'use strict';

var console = require("console");
var debug  = require("debug")('swidbox:rest');
var q      = require('q');
/**
 * Operations on /metastore/{StoreId}
 */
module.exports = {
    
    /**
     * 
     * parameters: StoreId
     * produces: application/json
     */
    get: function getMetaStoreById(req, res) {
        var storeId = req.params.StoreId;        
        res.status(501).send('not implemented!');
        debug('@todo NOT IMPLEMENTED');
    }, 
    
    /**
     * 
     * parameters: StoreId
     * produces: application/json
     */
    put: function createMetaStore(req, res) {
        var storeId = req.params.StoreId;
        storeId = "meta_"+storeId;

        GLOBAL.couchManager.createDatabase(storeId).then( function(r) {
            res.sendStatus(200);
        }, function(e) {
            res.status(e.status).send({'error':e.error, 'reason':e.reason})
        });
    }, 
    
    /**
     * 
     * parameters: StoreId
     * produces: application/json
     */
    delete: function deleteMetaStore(req, res) {
        var storeId = req.params.StoreId;
        storeId = "meta_"+storeId;

        debug('deleteMetaStore:'+storeId);
        GLOBAL.couchManager.deleteDatabase(storeId).then( function(r) {
            res.sendStatus(200);
        }, function(e) {
            res.status(e.status).send({'error':e.error, 'reason':e.reason})
        });
    }
    
};
