'use strict';

/**
 * Operations on /metastore/{StoreId}/globals/
 */
module.exports = {
    /**
     * 
     * parameters: 
     * produces: application/json
     */
    get: function getGlobalExports(req, res) {
        GLOBAL.metaManager.listExports('meta_'+req.params.StoreId, 
                                       true/*global*/, req.query.name)
            .then( function(r) {
                res.status(r.status).send( r.body );
            }, function(e) {                
                res.status(e.status).send( e );
            }).done();        
    }
};
