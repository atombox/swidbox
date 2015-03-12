'use strict';

/**
 * Operations on /metastore/{StoreId}/globals/{ObjectName}
 */
module.exports = {
    
    /**
     * 
     * parameters: StoreId, ObjectName
     * produces: application/json
     */
    get: function getMetObjectByName(req, res) {
        GLOBAL.metaManager.getMetaObjectByName('meta_'+req.params.StoreId, 
                                             req.params.ObjectName)
            .then( function(r) {
                res.status(r.status).send( r.body );
            }, function(e) {                
                res.status(e.status).send( e );
            }).done();
    }, 
        
    /**
     *
     * parameters: StoreId, ObjectName, MetaObject 
     * produces: application/json
     */
    put: function createMetaObject(req, res) {
        GLOBAL.metaManager.createMetaObject('meta_'+req.params.StoreId, 
                                            req.params.ObjectName, 
                                            req.body)
            .then( function(r) {
                res.status(r.status).send( r.exports );
            }, function(e) {                
                res.status(e.status).send( e );
            }).done();
    }, 
    
    /**
     * 
     * parameters: StoreId, ObjectId
     * produces: application/json
     */
    delete: function deleteMetaObject(req, res) {
        GLOBAL.metaManager.deleteMetaObject('meta_'+req.params.StoreId,
                                            req.params.ObjectName)
            .then( function(r) {
                res.status(200).send(true);
            }, function(e) {
                res.status(e.status).send(e);
            }).done();
    }
};
