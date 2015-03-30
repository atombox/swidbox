'use strict';

function MetaSet(options) {
    if (!options) {
        options = {};
    }
    
    this.type = options.type;
    this.global = options.global;
    this.content = options.content;
    this.exports = options.exports;
}

module.exports = MetaSet;
