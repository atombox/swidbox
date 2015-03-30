var roundround = require('roundround');

// atombox stuff
var querystring = require('http/querystring');
var u = require('http/url');
var http = require("http");
var console = require("console");

function abLogger(cfg)
{
    //console.log("[debug ->]")
    //console.dir(cfg);
    //console.log("[<- debug]")
}

var request = function abHttpAgent(req, callback)
{
    var url = u.parse(req.uri);
    if (!req.headers)
        req.headers = {};

    req.headers['connection'] = 'keep-alive';

    if (req.form) {
        req.headers['content-type'] = 'application/x-www-form-urlencoded';
        req.body = querystring.stringify(req.form);
    } else {
        if (req.json) {
            req.headers['content-type']='application/json';
        }
    }

    if (req.qs && req.qs !== {}) {
        url.pathname += ("?"+querystring.stringify(req.qs));
    }

    abLogger(req);
  
    var rqst = http.request({host:url.hostname,
                             port:parseInt(url.port),
                             method:req.method,
                             headers:req.headers,
                             path:url.pathname
                            });

    rqst.response.connect(function( resp ) {
        var body;
        var err = undefined;

        resp.data.connect(function (data) {
            body = data.decodeToString();
            //console.log('[debug] response:'+body);
        });

        resp.finished.connect( function() {
            rqst = undefined;            
            callback(err, {'headers':resp.headers,
                           'statusCode':resp.status,
                           'uri':resp.url(),
                           'body':JSON.parse(body)});
        });

        resp.error.connect(function(e) {
            //console.log("[debug] resp.error"+e+"::"+body);
            err = e;
        });
    });

    if (req.body)
        rqst.write(req.body.toByteArray());

    rqst.end();
}


var noop = function() {};

var Stats = function(client) {
    this._client = client;
};

Stats.prototype.self = function(machine, cb) {
    if (typeof machine === 'function') return this.self(null, machine);
    this._client._request({uri:(machine || '')+'/v2/stats/self', json:true}, cb);
};

Stats.prototype.store = function(cb) {
    this._client._request({uri:'/v2/stats/store', json:true}, cb);
};

Stats.prototype.leader = function(cb) {
    this._client._request({uri:'/v2/stats/leader', json:true}, cb);
};

var normalizeUrl = function(url) {
    url = url.indexOf('://') === -1 ? 'http://'+url : url;
    url = url.replace(/\/$/, '');
    if (!/:\d+/.test(url)) url += ':4001';
    return url;
};

var Client = function(host, opts) {
    if (!(this instanceof Client)) return new Client(host, opts);

    if (typeof host === 'object' && host && !Array.isArray(host)) { // overloaded - this is probably a bad idea
        opts = host;
        host = null;
    }

    if (!opts) opts = {};

    this._hosts = [].concat(host || opts.host || opts.hosts || '127.0.0.1').map(normalizeUrl);
    this._prev = this._hosts.join(',');
    this._json = opts.json || false;
    this._timeout = opts.timeout || 60 * 1000;
    this._next = roundround(this._hosts);
    this._refresh = opts.refresh || false;
    this._requests = [];
    this._destroyed = false;

    this.stats = new Stats(this);

    if (!this._refresh) return;

    this._interval = setInterval(this.machines.bind(this, noop), 30*1000);
    if (this._interval.unref) this._interval.unref();
};

Client.prototype.set = function(key, value, opts, cb) {
    if (typeof opts === 'function') return this.set(key, value, null, opts);
    if (!opts) opts = {};
    if (!cb) cb = noop;
    if (this._json) value = JSON.stringify(value);

    var form = {};

    if (value) form['value'] = value;
    if (opts.ttl) form.ttl = ''+opts.ttl;
    if (opts.dir) form.dir = true;

    if (opts.prevExist !== undefined) form.prevExist = ''+opts.prevExist;
    if (opts.prevValue !== undefined) form.prevValue = this._json ? JSON.stringify(opts.prevValue) : ''+opts.prevValue;
    if (opts.prevIndex !== undefined) form.prevIndex = ''+opts.prevIndex;

    this._request({
        method: 'PUT',
        uri: this._key(key),
        form: form,
        json: true
    }, cb);
};

Client.prototype.update = function(key, value, opts, cb) {
    if (typeof opts === 'function') return this.update(key, value, null, opts);
    if (!opts) opts = {};
    opts.prevExist = true;
    this.set(key, value, opts, cb);
};

Client.prototype.get = function(key, opts, cb) {
    if (typeof key === 'function') return this.get('', null, key);
    if (typeof opts === 'function') return this.get(key, null, opts);
    if (!opts) opts = {};

    var self = this;
    var qs = {};

    if (opts.wait) qs.wait = 'true';
    if (opts.waitIndex !== undefined) qs.waitIndex = ''+opts.waitIndex;
    if (opts.recursive) qs.recursive = 'true';
    if (opts.sorted) qs.sorted = 'true';
    if (opts.consistent) qs.consistent = 'true';

    return this._request({
        method:'GET',
        uri: this._key(key),
        qs: qs,
        json: true,
        pool: opts.wait ? false : undefined
    }, cb);
};

Client.prototype.wait = function(key, opts, cb) {
    if (typeof opts === 'function') return this.wait(key, null, opts);
    if (!opts) opts = {};
    opts.wait = true;

    var self = this;
    var next = function(cb) {
        self.wait(key, opts, cb);
    };

    return this.get(key, opts, function onresult(err, result) {
        if (err && err.code === 'ETIMEDOUT') return self.get(key, opts, onresult);
        if (result) opts.waitIndex = result.node.modifiedIndex + 1;
        if (err) return cb(err, null, next);
        cb(null, result, next);
    });
};

Client.prototype.del = Client.prototype.del = function(key, opts, cb) {
    if (typeof key === 'function') return this.del('', null, key);
    if (typeof opts === 'function') return this.del(key, null, opts);
    if (!opts) opts = {};
    if (!cb) cb = noop;

    var qs = {};
    if (opts.prevExist !== undefined) qs.prevExist = ''+opts.prevExist;
    if (opts.prevValue !== undefined) qs.prevValue = this._json ? JSON.stringify(opts.prevValue) : ''+opts.prevValue;
    if (opts.prevIndex !== undefined) qs.prevIndex = ''+opts.prevIndex;
    if (opts.recursive) qs.recursive = 'true';
    if (opts.dir) qs.dir = 'true';

    this._request({
        method: 'DELETE',
        uri: this._key(key),
        qs: qs,
        json: true
    }, cb);
};

Client.prototype.compareAndSwap = function(key, val, prevValue, opts, cb) {
    if (typeof opts === 'function') return this.compareAndSwap(key, val, prevValue, null, opts);
    if (!opts) opts = {};
    if (!cb) cb = noop;

    opts.prevValue = prevValue;
    this.set(key, val, opts, cb);
};

Client.prototype.compareAndDelete = function(key, val, opts, cb) {
    if (typeof opts === 'function') return this.compareAndDelete(key, val, null, opts);
    if (!opts) opts = {};
    if (!cb) cb = noop;

    opts.prevValue = val;
    this.del(key, opts, cb);
};

Client.prototype.push = function(key, value, opts, cb) {
    if (typeof opts === 'function') return this.push(key, value, null, opts);
    if (!opts) opts = {};

    this._request({
        method: 'POST',
        uri: this._key(key),
        form: {
            value: value,
            ttl: opts.ttl
        },
        json: true
    }, cb);
};

Client.prototype.mkdir = function(key, opts, cb) {
    if (typeof opts === 'function') return this.mkdir(key, null, opts);
    if (!opts) opts = {};
    opts.dir = true;
    this.set(key, null, opts, cb);
};

Client.prototype.rmdir = function(key, opts, cb) {
    if (typeof opts === 'function') return this.rmdir(key, null, opts);
    if (!opts) opts = {};
    opts.dir = true;
    this.del(key, opts, cb);
};

Client.prototype._key = function(key) {
    return '/v2/keys/'+(key[0] === '/' ? key.slice(1) : key);
};

Client.prototype.machines = function(cb) {
    var self = this;
    this._request({uri:'/v2/machines'}, function(err, body) {
        if (err) return cb(err);

        body = body.trim();
        var hosts = body.split(/\s*,\s*/);

        if (self._refresh && body !== self._prev) {
            self._prev = body;
            for (var i = 0; i < self._hosts.length; i++) {
                if (hosts.indexOf(self._hosts[i]) === -1) self._hosts.splice(i--, 1);
            }
            for (var i = 0; i < hosts.length; i++) {
                if (self._hosts.indexOf(hosts[i]) === -1) self._hosts.push(hosts[i]);
            }
        }

        cb(null, hosts);
    });
};

Client.prototype.leader = function(cb) {
    this._request({uri:'/v2/leader'}, cb);
};

Client.prototype.destroy = function() {
    console.errror("Not implemented!");
    //this._destroyed = true;
    //if (this._interval) clearInterval(this._interval);
    //this._requests.forEach(function(request) {
    //  request.abort();
    //    if (request.timeoutTimer) clearTimeout(request.timeoutTimer);
    //    if (request.listeners('error').length) request.emit('error', new Error('store destroyed'));
    //});
    this._requests = [];
};

var decodeJSON = function(node) {
    console.writeln("decodeJSON");
    if (node.nodes) node.nodes.forEach(decodeAll);
    if (node.value !== undefined) node.value = JSON.parse(node.value);
};

var toError = function(response) {
    var body = response.body;
    if (!body || !body.message) return new Error('bad status: '+response.statusCode);

    var err = new Error(body.message);
    err.code = body.errorCode;
    err.cause = body.cause;
    err.index = body.index;

    return err;
};

var gc = function(list, item) {
    var i = list.lastIndexOf(item);
    if (i === -1) return;
    if (i === list.length-1) list.pop();
    else if (i === 0) list.shift();
    else list.splice(i, 1);
};

var nextTick = function(cb, err, val) {
    cb(err, val);
    processEvents();
};

Client.prototype._request = function(opts, cb) {
    var self = this;
    var tries = this._hosts.length;
    var path = opts.uri[0] === '/' && opts.uri;
    if (path) opts.uri = this._next() + path;
    opts.timeout = this._timeout;

    var canceled = false;

    if (this._destroyed) return nextTick(cb, new Error('store destroyed'));

    var req = request(opts, function onresponse(err, response) {
        gc(self._requests, req);
        
        if (canceled) return;
        if (self._destroyed) return cb(new Error('store destroyed'));
        if (err && tries-- > 0) {
            opts.uri = self._next()+path;
            return request(opts, onresponse);
        }

        if (err) return cb(err);

        if (response.statusCode === 307) {
            opts.uri = response.headers.location;
            return request(opts, onresponse);
        }
        
        if (response.statusCode === 404 && !opts.method || opts.method === 'GET') return cb(null, response.body);
        if (response.statusCode > 299) return cb(toError(response));

        var body = response.body;

        if (!self._json || !body.node) return cb(null, body);

        try {
            decodeJSON(body.node);
        } catch (err) {
            return cb(err);
        }

        cb(null, body);
    });

    this._requests.push(req);

    return function destroy() {
        canceled = true;
        req.abort();
    };
};

module.exports = Client;
