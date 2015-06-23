
var request = require('supertest');
var express = require("express");
var should  = require('should');

var console = require("console");
var fs      = require("fs");

describe('Routing', function() {
    var url = 'inductum.com:8082/api';

    before(function(done) {
        request(url+'/metastore/').delete('store1').end(function(e, r) {
            done();
        });
    });
    
    describe('{StoreId}', function() {
        it('should return 404', function(done) {
            request(url+'/metastore/').delete('store1').end(function(e, r) {
                if (e)
                    throw e;
                r.status.should.equal(404);
                done();
            });
        });

        it ('should create a new store', function(done) {
            request(url+'/metastore/').put('store1').end(function(e, r) {
                if (e)
                    throw e;
                r.status.should.equal(200);
                done();
            });
        }); 

        it ('should return 412', function(done) {
            request(url+'/metastore/').put('store1').end(function(e, r) {
                if (e)
                    throw e;
                r.status.should.equal(412);
                done();
            });
        });

        it('deletes store1 should return 200', function(done) {
            request(url+'/metastore/').delete('store1').end(function(e, r) {
                if (e)
                    throw e;
                r.status.should.equal(200);
                done();
            });
        });

        it ('should create a new store', function(done) {
            request(url+'/metastore/').put('store1').end(function(e, r) {
                if (e)
                    throw e;
                r.status.should.equal(200);
                done();
            });
        });

        it ('should retrieve _all', function(done) {
            request(url+'/metastore/').get('_all').end(function(e, r) {
                if (e)
                    throw e;
                r.status.should.equal(200);                
                done();
            });
        });

    })

    var ddlgdefs="";
    describe('{MetaObject}', function(done) {

        before(function(don) {
            fs.readFile('test/ddls/globals/DDLGDEFS.ddl','base64', function(err, data) {
                if (err)
                    throw err;

                ddlgdefs = data;
                don();
            });                        
        });

        it('should fail with 401', function(done) {            
            request(url+'/metastore/store1/')
                .put('ddlgdefs').send({ type:'ddl', 
                                        content:"def x.\n02 pic x(9.\nend."})
                .set('Accept', 'application/json')
                .end(function(e, r) {                    
                    if (e) {
                        throw e;
                    }
                    r.status.should.equal(401);
                    r.body.line.should.equal(1);
                    r.body.column.should.equal(1);
                    done();
                });
        });

        it('should create a global object', function(done) {            
            request(url+'/metastore/store1/')
                .put('ddlgdefs').send({ type:'ddl', 
                                        content:ddlgdefs,
                                        global: true})
                .set('Accept', 'application/json')
                .end(function(e, r) {                    
                    if (e) {
                        throw e;
                    }

                    r.status.should.equal(200);
                    r.body[0].should.equal('afm_user_id');
                    r.body[r.body.length-1].should.equal('dat');
                    done();
                });
        });

        it('should delete the global object', function(done) {            
            request(url+'/metastore/store1/')
                .delete('ddlgdefs')
                .set('Accept', 'application/json')
                .end(function(e, r) {                    
                    if (e) {
                        throw e;
                    }

                    r.status.should.equal(200);
                    done();
                });
        });

        it('should delete fail', function(done) {            
            request(url+'/metastore/store1/')
                .delete('ddlgdefs')
                .set('Accept', 'application/json')
                .end(function(e, r) {                    
                    if (e) {
                        throw e;
                    }

                    r.status.should.equal(404);
                    done();
                });
        })

        it('should create a global object', function(done) {            
            request(url+'/metastore/store1/')
                .put('ddlgdefs').send({ type:'ddl', 
                                        content:ddlgdefs,
                                        global: true})
                .set('Accept', 'application/json')
                .end(function(e, r) {                    
                    if (e) {
                        throw e;
                    }
                    
                    r.status.should.equal(200);
                    r.body[0].should.equal('afm_user_id');
                    r.body[r.body.length-1].should.equal('dat');
                    done();
                });
        });

        it('should get the global object', function(done) {            
            request(url+'/metastore/store1/')
                .get('ddlgdefs')
                .set('Accept', 'application/json')
                .end(function(e, r) {                    
                    if (e) {
                        throw e;
                    }
                    
                    r.status.should.equal(200);
                    r.body.exports[0].should.equal('afm_user_id');
                    done();
                });
        });

    });
});

