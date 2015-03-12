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
    get: function findObjectByExport(req, res) {
        GLOBAL.metaManager.findObjectByExport('meta_'+req.params.StoreId, 
                                              req.query.name)
            .then( function(r) {
                console.log('sending');
                res.status(r.status).send( r.body );
            }, function(e) {           
                console.log('rejecting');
                res.status(e.status).send( e );
            }).done();
    }
};
