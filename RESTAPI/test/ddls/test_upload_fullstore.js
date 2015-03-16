var request = require('supertest');
var express = require("express");
var should  = require('should');

var console = require("console");
var fs      = require("fs");
var q       = require('q');



var all_globals = [];
var all_ddls    = [];
var global_dir = './globals/';
var ddl_dir    = './records/';

function readDir(dir) 
{
    var defer = q.defer();
    var arr   = [];
    fs.readdir(dir, function(e, files) {
        if (e)
            def.reject(e);                
        files.forEach( function(file) {
            arr.push(dir+"\\"+file);
        });        
        defer.resolve(arr);
    });

    return defer.promise;
}

function readFile(file)
{
    var defer = q.defer();

    fs.readFile(file, 'base64', function(err, data) {
        if (err) {
            defer.reject(err);
        } else {
            defer.resolve(data);
        }
    });

    return defer.promise;
}

function deleteStore(url, name)
{
    var defer = q.defer();
    request(url).delete(name).end(function(e, r) {
        if (e)
            defer.resolve();
        else
            defer.resolve();
    });
    return defer.promise;
}

function reCreateStore(url, name)
{
    var defer = q.defer();
    deleteStore(url, name).then(function() {
        request(url).put(name).end(function(e, r) {
            if (e)
                defer.resolve();
            else
                defer.resolve();
        });
    });
    return defer.promise;
}

function createStore(url, name)
{
    var defer = q.defer();    
    request(url).put(name).end(function(e, r) {
        if (e)
            defer.resolve();
        else
            defer.resolve();
    });
    return defer.promise;
}

function addGlobalDDLObject(url, store, name, content)
{
    var defer = q.defer();

    request(url+store).put("/"+name).send( {type:'ddl',
                                            content: content,
                                            global:true} ).end(function(e, r) {
                                                if (e) {
                                                    throw e;
                                                }

                                                if(r.status != 200) {
                                                    defer.reject(r.body);
                                                } else {
                                                    //console.dir(r.body);
                                                    defer.resolve();
                                                }
                                            });

    return defer.promise;
}

function addDDLObject(url, store, name, content)
{
    var defer = q.defer();

    request(url+store).put("/"+name).send( {type:'ddl',
                                            content: content,
                                            global:false} ).end(function(e, r) {
                                                if (e) {
                                                    throw e;
                                                }

                                                if(r.status != 200) {
                                                    defer.reject(r.body);
                                                } else {
                                                    //console.dir(r.body);
                                                    defer.resolve();
                                                }
                                            });

    return defer.promise;
}

function addGlobalFiles(arr) {
    try {
        function addGlobalFile( idx ) 
        {
            console.log('AddGlobalFile:'+arr[idx]);

            var name = arr[idx];
            
            var defer = q.defer();
            var url = 'localhost:3000/api/metastore/'; 
            deleteFile(name.replace(/\.ddl/gi,"")
                       .replace(/.*\\/gi,"").toLowerCase()).then( function() {
                           
                           readFile(name).then( function (data) {
                               addGlobalDDLObject( url,'mystore', name.replace(/\.ddl/gi,"")
                                                   .replace(/.*\\/gi,"").toLowerCase(), data).then(
                                                       function(o) {                            
                                                           defer.resolve(idx+1);
                                                       }, function (e) {
                                                           console.log(e);
                                                           defer.reject(e);
                                                       });
                           }, function(err) {
                               console.log(err);
                               process.exit(0);
                           });  
                           return defer.promise;
                       }
            );
        }
        
        var promises = [];
        for (var i=0; i<arr.length;i++) {
            promises.push(addGlobalFile);
        }
        
        //console.log(promises);
        var result = q(0);
        for (var i=0; i<promises.length; i++) {
            result = result.then(promises[i]);
        }

    } catch(e) {
        console.error(e);
    }

    return result;
}


function deleteFile(name) 
{
    var defer = q.defer();
    var url = 'localhost:3000/api/metastore/'; 
    
    request(url+'mystore').delete("/"+name).end(function(e, r) {
        if (e) {
            throw e;
        }
        
        defer.resolve();
        
    });

    return defer.promise;
}

function addFiles(arr) {
    try {
        function addFile( idx) 
        {
            console.log('AddFile:'+arr[idx]);

            var name = arr[idx];
            
            var defer = q.defer();
            var url = 'localhost:3000/api/metastore/'; 

            deleteFile(name.replace(/\.ddl/gi,"")
                       .replace(/.*\\/gi,"").toLowerCase()).then( function() {
                           readFile(name).then( function (data) {
                               addDDLObject( url,'mystore', name.replace(/\.ddl/gi,"")
                                             .replace(/.*\\/gi,"").toLowerCase(), data).then(
                                                 function(o) {                            
                                                     defer.resolve(idx+1);
                                                 }, function (e) {
                                                     console.log(e);
                                                     defer.reject(e);
                                                 });
                           }, function(err) {
                               console.log(err);
                           });
                       });
            return defer.promise;
        }

        var promises = [];
        for (var i=0; i<arr.length;i++) {
            promises.push(addFile);
        }
        
        //console.log(promises);
        var result = q(0);
        for (var i=0; i<promises.length; i++) {
            result = result.then(promises[i]);
        }

    } catch(e) {
        console.error(e);
    }

    return result;
}

var mp6_g = [
    // 'mp6\\DDLGDEFS.ddl',
    // 'mp6\\DDLGDEFX.ddl',
    // 'mp6\\DDLGADEF.ddl',
    // 'mp6\\DDLGAMEX.ddl',
    // 'mp6\\DDLGATD.ddl',
    // 'mp6\\DDLGCADM.ddl',
    // 'mp6\\DDLGCAFX.ddl',
    // 'mp6\\DDLGCATH.ddl',
    // 'mp6\\DDLGCLNK.ddl',
    // 'mp6\\DDLGCMSG.ddl',
    // 'mp6\\DDLGEXT.ddl',
    // 'mp6\\DDLGHLTH.ddl',
    // 'mp6\\DDLGILF.ddl',
    // 'mp6\\DDLGISO.ddl',
    // 'mp6\\DDLGLCNF.ddl',
    // 'mp6\\DDLGNEGX.ddl',
    // 'mp6\\DDLGNMM.ddl',
    // 'mp6\\DDLGOMFX.ddl',
    // 'mp6\\DDLGPBFX.ddl',
    // 'mp6\\DDLGPEM.ddl',
    // 'mp6\\DDLGPSTM.ddl',
    // 'mp6\\DDLGPTD.ddl',
    // 'mp6\\DDLGPTDF.ddl',
    //'mp6\\DDLGREFR.ddl',
    //'mp6\\DDLGSEC.ddl',
    //'mp6\\DDLGSECF.ddl',
    //'mp6\\DDLGSEM.ddl',
    //'mp6\\DDLGSNA.ddl',
    //'mp6\\DDLGSPFX.ddl',
    //'mp6\\DDLGSTM.ddl',
    //'mp6\\DDLGSVHX.ddl',
    //'mp6\\DDLGTLFX.ddl',
    //'mp6\\DDLGTSS.ddl',
    //'mp6\\DDLGVSM.ddl',
    //'mp6\\DDLGX25.ddl',
    //'mp6\\DDLGPTH.ddl'
    'mp6_g\\kdefsgds.ddl'
];

var mp6 = [
    // 'mp6\\AEMTDS.ddl',
    // 'mp6\\AIFDDLS.ddl',
    // 'mp6\\AORFDS.ddl',
    // 'mp6\\APRFDS.ddl',
    // 'mp6\\ASGNDS.ddl',
    // 'mp6\\AST04.ddl',
    // 'mp6\\AST09.ddl',
    // 'mp6\\ATTDS.ddl',
    // 'mp6\\BICIDDLS.ddl',
    // 'mp6\\BNETDDLS.ddl',
    // 'mp6\\BNETDDLX.ddl',
    // 'mp6\\BOLDDLS.ddl',
///!!    'mp6\\BORGDDLS.ddl',
    // 'mp6\\BTRNDDLS.ddl',
    // 'mp6\\C100DDLF.ddl',
    // 'mp6\\C100DDLS.ddl',
    // 'mp6\\CIPFDDLS.ddl',
    // 'mp6\\CPF08.ddl',
    // 'mp6\\CPF09.ddl',
    // 'mp6\\CUSTCNST.ddl',
    // 'mp6\\DDLACNST.ddl',
    // 'mp6\\DDLAPAX.ddl',
//tokens!!//    'mp6\\DDLEMS.ddl',
    // 'mp6\\DDLFAALF.ddl',
    // 'mp6\\DDLFADCF.ddl',
    // 'mp6\\DDLFADM.ddl',
    // 'mp6\\DDLFAPA1.ddl',
    // 'mp6\\DDLFAPA2.ddl',
    // 'mp6\\DDLFAPAF.ddl',
    // 'mp6\\DDLFAPAX.ddl',
    // 'mp6\\DDLFAPAY.ddl',
    // 'mp6\\DDLFAPCF.ddl',
    // 'mp6\\DDLFAQF.ddl',
    // 'mp6\\DDLFARF.ddl',
    // 'mp6\\DDLFAST.ddl',
    // 'mp6\\DDLFATD.ddl',
    // 'mp6\\DDLFATDX.ddl',
    // 'mp6\\DDLFCAF.ddl',
    // 'mp6\\DDLFCAF1.ddl',
    // 'mp6\\DDLFCAFD.ddl',
    // 'mp6\\DDLFCAPF.ddl',
    // 'mp6\\DDLFCART.ddl',
    // 'mp6\\DDLFCHF.ddl',
    // 'mp6\\DDLFCONF.ddl',
    // 'mp6\\DDLFCPF.ddl',
    // 'mp6\\DDLFCPFX.ddl',
    // 'mp6\\DDLFCRM.ddl',
    // 'mp6\\DDLFCRMX.ddl',
    // 'mp6\\DDLFCRUF.ddl',
    // 'mp6\\DDLFCSEC.ddl',
    // 'mp6\\DDLFDCCD.ddl',
//!!    'mp6\\DDLFEAF.ddl',
    // 'mp6\\DDLFECF.ddl',
    // 'mp6\\DDLFEMF.ddl',
    // 'mp6\\DDLFERF.ddl',
    // 'mp6\\DDLFHCF.ddl',
    // 'mp6\\DDLFHOF.ddl',
    // 'mp6\\DDLFICF.ddl',
    // 'mp6\\DDLFICFE.ddl',
    // 'mp6\\DDLFIDF.ddl',
    // 'mp6\\DDLFIPCF.ddl',
    // 'mp6\\DDLFKEY6.ddl',
    // 'mp6\\DDLFKEYA.ddl',
    // 'mp6\\DDLFKEYD.ddl',
    // 'mp6\\DDLFKEYF.ddl',
    // 'mp6\\DDLFKEYI.ddl',
    // 'mp6\\DDLFMOF.ddl',
    // 'mp6\\DDLFNEG.ddl',
    // 'mp6\\DDLFNF.ddl',
    // 'mp6\\DDLFNIDF.ddl',
    // 'mp6\\DDLFNNEG.ddl',
    // 'mp6\\DDLFPBF.ddl',
    // 'mp6\\DDLFPDF.ddl',
    // 'mp6\\DDLFPIRF.ddl',
    // 'mp6\\DDLFPRDF.ddl',
    // 'mp6\\DDLFPRF.ddl',
    // 'mp6\\DDLFPRRF.ddl',
    // 'mp6\\DDLFPTD.ddl',
    // 'mp6\\DDLFPTDF.ddl',
    // 'mp6\\DDLFPTDX.ddl',
    // 'mp6\\DDLFPTLF.ddl',
    // 'mp6\\DDLFPUF.ddl',
    // 'mp6\\DDLFRBF.ddl',
    // 'mp6\\DDLFRCDF.ddl',
    // 'mp6\\DDLFRCPT.ddl',
    // 'mp6\\DDLFRGCF.ddl',
    // 'mp6\\DDLFRPT.ddl',
    // 'mp6\\DDLFRTBL.ddl',
    // 'mp6\\DDLFSAF.ddl',
    // 'mp6\\DDLFSEC.ddl',
    // 'mp6\\DDLFSPF.ddl',
    // 'mp6\\DDLFSTF.ddl',
    // 'mp6\\DDLFSTRF.ddl',
    // 'mp6\\DDLFSURF.ddl',
    // 'mp6\\DDLFSVDF.ddl',
    // 'mp6\\DDLFSVHF.ddl',
    // 'mp6\\DDLFTAXF.ddl',
    // 'mp6\\DDLFTCF.ddl',
    // 'mp6\\DDLFTDF.ddl',
    // 'mp6\\DDLFTDFX.ddl',
    // 'mp6\\DDLFTKN.ddl',
    // 'mp6\\DDLFTLF.ddl',
    // 'mp6\\DDLFTQF.ddl',
    // 'mp6\\DDLFTQFT.ddl',
    // 'mp6\\DDLFTRF.ddl',
    // 'mp6\\DDLFTSRF.ddl',
    // 'mp6\\DDLFTSS.ddl',
    // 'mp6\\DDLFUAF.ddl',
    // 'mp6\\DDLISO92.ddl',
    // 'mp6\\DDLSDF.ddl',
    // 'mp6\\DDLSDFX.ddl',
    // 'mp6\\DDLTEST.ddl',
//!!    'mp6\\DDLUSER.ddl',
    // 'mp6\\DHSDDLS.ddl',
    // 'mp6\\DIEBDDLS.ddl',
    // 'mp6\\DINRDDLS.ddl',
    // 'mp6\\DINRDDLX.ddl',
    // 'mp6\\EMTDS.ddl',
    // 'mp6\\EORFDS.ddl',
    // 'mp6\\EPRFDS.ddl',
    // 'mp6\\ESFDS.ddl',
    //  'mp6\\EURODDLS.ddl',
    // 'mp6\\HPDHDDLS.ddl',
    // 'mp6\\HPSADDLS.ddl',
//!!    'mp6\\IDFEMTDS.ddl',
    // 'mp6\\IPEPDDLS.ddl',
    // 'mp6\\IPEUDDLS.ddl',
    // 'mp6\\ISCFDS.ddl',
    //'mp6\\LEXMASDS.ddl',
    // 'mp6\\N50DDLF.ddl',
    // 'mp6\\N50DDLS.ddl',
    // 'mp6\\REFDDLS.ddl',
    'mp6\\SNFDDLS.ddl',
    'mp6\\SPDHDDLS.ddl',
    'mp6\\SPDHDDLX.ddl',
    'mp6\\SPRFDS.ddl',
    'mp6\\TRFEMTDS.ddl',
    'mp6\\VISADDLS.ddl'
];

//reCreateStore('localhost:3000/api/metastore/', 'mystore').then( function() {
//    addGlobalFiles(mp6_g);
//});

//reCreateStore('localhost:3000/api/metastore/', 'mystore').then( function() {
//    addFiles(ddl_files);
//})

addFiles(mp6);
