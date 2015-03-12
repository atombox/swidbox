'use strict';

/**
 * Operations on /metastore/{StoreId}/
 */
module.exports = {
    /**
     * 
     * parameters: 
     * produces: application/json
     */
    get: function getAllGlobalObjects(req, res) {
        GLOBAL.metaManager.listAllObjects('meta_'+req.params.StoreId, 
                                          false/*all*/)
            .then( function(r) {
                res.status(r.status).send( r.body );
            }, function(e) {                
                res.status(e.status).send( e );
            }).done();        
    }
    
};
