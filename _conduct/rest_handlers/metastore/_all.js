'use strict';

/**
 * Operations on /metastore/_all
 */
module.exports = {
    /**
     * 
     * parameters: 
     * produces: application/json
     */
    get: function getAllMetaStores(req, res) {
        GLOBAL.couchManager.listDatabases().then( function(r) {
            var arr = [];

            r.map(function(val) {
                if (val.match(/^meta_/)!= null)
                    arr.push(val.replace(/^meta_/g,""));
            });

            res.status(200).send(arr);

        }, function(e) {
            res.status(e.status).send({'error':e.error, 'reason':e.reason})
        });
    }
    
};
