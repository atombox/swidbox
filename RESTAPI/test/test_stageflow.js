
var request = require('supertest');
var express = require("express");
var should  = require('should');

var console = require("console");
var fs      = require("fs");

describe('Routing', function() {
    var url = 'http://inductum.com:8088/api';

    before(function(done) {
        //request(url+'/metastore/').delete('store1').end(function(e, r) {
        request(url+'/metastore/stage/token123/')
            .delete('unstruct').set('Accept', 'application/json')
            .end( function() {
                request(url+'/metastore/stage/token123/')
                    .delete('emf').set('Accept', 'application/json')
                    .end(function() {
                        done();
                    });

            });
        //});
    });

    // describe('/stage/{name}', function() {
        it('should create a new flow', function(done) {
            var obj = {
                "file": "/tmp/tmp.txt",
                "type": "unstructured",
                "timer": 10
            };
            console.log('put:'+url+'/metastore/stage/token123/');
            request(url+'/metastore/stage/token123/')
                .put('unstruct').send(obj).set('Accept', 'application/json')
                .end(function(e,r) {

                console.dir(r.body);
                if (e) {
                    console.dir(e);
                    throw e;
                }
                r.status.should.equal(200);
                done();
            });
        });

    //     it('should delete the flow', function(done) {
    //         request(url+'/metastore/stage/token123/')
    //             .delete('unstruct').set('Accept', 'application/json')
    //             .end(function(e,r) {

    //             if (e)
    //                 throw e;

    //             r.status.should.equal(200);
    //             done();
    //         });
    //     });

    //     it('should create a new flow', function(done) {
    //         var obj = {
    //             "file": "/tmp/tmp.txt",
    //             "type": "unstructured",
    //             "timer": 10
    //         };

    //         request(url+'/metastore/stage/token123/')
    //             .put('unstruct').send(obj).set('Accept', 'application/json')
    //             .end(function(e,r) {

    //             console.dir(r.body);
    //             if (e)
    //                 throw e;
    //             r.status.should.equal(200);
    //             done();
    //         });
    //     });

    //     it('should create a second flow', function(done) {
    //         var obj = {
    //             "file": "/tmp/emf.txt",
    //             "type": "key_seq",
    //             "timer": 10,
    //             "meta_storeid": "mystore",
    //             "meta_object_name": "ddlfemf",
    //             "meta_export": "emf"
    //         };

    //         request(url+'/metastore/stage/token123/')
    //             .put('emf').send(obj).set('Accept', 'application/json')
    //             .end(function(e,r) {

    //             if (e) {
    //                 throw e;
    //             }
    //             r.status.should.equal(200);
    //             done();
    //         });
    //     });

    //     it('should fail validation', function(done) {
    //         var obj = {
    //             "file": "/tmp/key.txt",
    //             "type": "key_seq",
    //             "timer": 10,
    //             "meta_storeid": "mystore",
    //             "meta_object_name": "aprfds",
    //             "meta_export": "NON_EXISTENT"
    //         };

    //         request(url+'/metastore/stage/token123/')
    //             .put('emf').send(obj).set('Accept', 'application/json')
    //             .end(function(e,r) {

    //             if (e)
    //                 throw e;
    //             r.status.should.equal(404);
    //             done();
    //         });
    //     });

    //     it('should update flow', function(done) {
    //         var obj = {
    //             "file": "c:\\tmp\\key.txt",
    //             "type": "key_seq",
    //             "timer": 140,
    //             "meta_storeid": "mystore",
    //             "meta_object_name": "ddlfecf",
    //             "meta_export": "ecf"
    //         };

    //         request(url+'/metastore/stage/token123/')
    //             .post('enscr').send(obj).set('Accept', 'application/json')
    //             .end(function(e,r) {

    //             if (e)
    //                 throw e;
    //             r.status.should.equal(200);
    //             done();
    //         });
    //     });
    //})

});

