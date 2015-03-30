'use strict';

/**
 * Operations on /metastore/stage/{token}/{name}
 */
module.exports = {
    
    /**
     * 
     * parameters: token, name
     * produces: application/json
     */
    get: function getStageFlow(req, res) {
        var token = req.params.token;
        var name  = req.params.name;

        res.status(501).send('not implemented!');
    }, 
    
    /**
     * 
     * parameters: token, name, stageflow
     * produces: application/json
     */
    put: function createStageFlow(req, res) {
        var token = req.params.token;
        var name  = req.params.name;

        GLOBAL.stageFlowManager.createStageFlow( token,
                                                 name,
                                                 req.body)
            .then( function(r) {
                res.status(r.status).send( r.body );
            }, function(e) {
                res.status(e.status).send( e );
            }).done();        
    }, 

    /**
     * 
     * parameters: token, name, stageflow
     * produces: application/json
     */
    post: function updateStageFlow(req, res) {
        var token = req.params.token;
        var name  = req.params.name;

        GLOBAL.stageFlowManager.updateStageFlow( token,
                                                 name,
                                                 req.body)
            .then( function(r) {
                res.status(r.status).send( r.body );
            }, function(e) {
                res.status(e.status).send( e );
            }).done();
    }, 
    
    
    /**
     * 
     * parameters: token, name
     * produces: application/json
     */
    delete: function deleteStageFlow(req, res) {
        var token = req.params.token;
        var name  = req.params.name;

        GLOBAL.stageFlowManager.deleteStageFlow( token,
                                                 name)
            .then( function(r) {
                res.status(r.status).send( r.body );
            }, function(e) {
                res.status(e.status).send( e );
            }).done();
    }
    
};
