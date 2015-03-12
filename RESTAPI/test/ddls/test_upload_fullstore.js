
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

function addGlobalFiles(arr) {
    try {
        function addGlobalFile( idx) 
        {
            console.log('AddGlobalFile:'+arr[idx]);

            var name = arr[idx];
            
            var defer = q.defer();
            var url = 'localhost:3000/api/metastore/'; 
            
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


var files = [              
    'globals\\DDLGDEFS.ddl',
    'globals\\DDLGADEF.ddl',
    // 'globals\\DDLGATD.ddl',
    // 'globals\\DDLGCAFX.ddl',
    // 'globals\\DDLGCATH.ddl',
    // 'globals\\DDLGCLNK.ddl',
    // 'globals\\DDLGCMSG.ddl',
    // 'globals\\DDLGEXT.ddl',
    // 'globals\\DDLGHLTH.ddl',
    // 'globals\\DDLGILF.ddl',
    // 'globals\\DDLGISO.ddl',
    // 'globals\\DDLGLCNF.ddl',
    // 'globals\\DDLGNMM.ddl',
    // 'globals\\DDLGNSTM.ddl',
    // 'globals\\DDLGOMFX.ddl',
    // 'globals\\DDLGPBFX.ddl',
    // 'globals\\DDLGPEM.ddl',
    // 'globals\\DDLGPSTM.ddl',
    // 'globals\\DDLGPTD.ddl',
       'globals\\DDLGPTH.ddl',
    // 'globals\\DDLGREFR.ddl',
    // 'globals\\DDLGSEC.ddl',
    // 'globals\\DDLGSEM.ddl',
    // 'globals\\DDLGSNA.ddl',
    // 'globals\\DDLGSPFX.ddl',
    // 'globals\\DDLGSTM.ddl',
    // 'globals\\DDLGSVHX.ddl',
    // 'globals\\DDLGTLFX.ddl',
     'globals\\DDLGTSS.ddl',
    //'globals\\DDLGVSM.ddl',
    'globals\\DDLGX25.ddl'];

reCreateStore('localhost:3000/api/metastore/', 'mystore').then( function() {
    addGlobalFiles(files);
});
