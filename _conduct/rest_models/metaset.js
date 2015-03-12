'use strict';

function MetaSet(options) {
    if (!options) {
        options = {};
    }
    
    this.type    = options.typ;
    this.content = options.content;
}

module.exports = MetaSet;
