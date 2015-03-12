'use strict';

function Error(options) {
    if (!options) {
        options = {};
    }
    
    this.error = options.error;
    this.reason = options.reason;
}

module.exports = Error;
