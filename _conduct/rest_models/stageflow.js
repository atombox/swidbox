'use strict';

function StageFlow(options) {
    if (!options) {
        options = {};
    }
    
    this.profile = options.profile;
    this.file = options.file;
    this.type = options.type;
    this.meta_storeid = options.meta_storeid;
    this.meta_object_name = options.meta_object_name;
    this.meta_export = options.meta_export;
}

module.exports = StageFlow;
