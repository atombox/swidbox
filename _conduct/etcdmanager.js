var debug = require('debug')('swidbox:etcdmanager');
var nano  = require('nano');
var q     = require('q');

function EtcdManager() 
{
    debug('EtcdManager started:');
}

module.exports = EtcdManager;

