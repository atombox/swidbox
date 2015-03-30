'use strict';

function ParseError(options) {
    if (!options) {
        options = {};
    }
    
    this.error = options.error;
    this.line = options.line;
    this.column = options.column;
}

module.exports = ParseError;
