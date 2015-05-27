var console     = require("console");
var fs          = require('fs');
var system      = require("system");
var q           = require("q");
q.stopUnhandledRejectionTracking();

var FileExtractorUnstructured = require("fileext.js").FileExtractorUnstructured;


var __log = function(msg)
{
    console.writeln("[debug exfilmgr.js] "+msg);
}

/**
 *  Array of Objects (key/value) pair
 */
function ExtractFileManager(flows_arr_str)
{

    if (!(this instanceof ExtractFileManager))
          return new ExtractFileManager(flows_arr_str);

    __log("ExtractFileManager == constructor");

    this._file_extractors = [];
    for (var key in flows_arr_str) {
        var flow = JSON.parse(flows_arr_str[key].value);
        try {
        switch(flow.type) {
          case 'unstructured': {
            this._file_extractors.push(new FileExtractorUnstructured(flow._name,
              flow.file, flow.timer));
          } break;
          case 'key_seq':
          case 'relative':
          case 'entry_seq': {
            __log("not implemented!"+flow.type);
                     system.exit(0);
          } break;

          default: __log("Unknown file type:"+flow.type);
                   system.exit(0); break;
        }
        } catch(e){console.writeln(e);}
    }

}

/**
* @return {Array} - array of errors
*/
ExtractFileManager.prototype.validateFlows = function()
{
   __log('validateFlows');
   var self = this;
   var errors = [];

   for (var i=0;i<self._file_extractors.length;i++) {
       var err = undefined;
       if ((err = self._file_extractors[i].validateFlow()) != undefined) {
           errors.push(err);
       }
   };

   __log('validateFlows returning'+errors);

   return errors;
}

// /**
//  * @return {Array} error -if has error, else undefined
//  */
// ExtractFileManager.prototype.validateFlow = function(flow)
// {
//     var key      = flow.key;
//     var flow_obj = undefined;

//     try {
//         flow_obj = JSON.parse(flow.value);
//     } catch(e) {
//         console.error('Flow object is invalid');
//         system.exit(0);
//     }

//     __log('validateFlow '+flow.key+", file:"+flow_obj.file);

//     if (!fs.exists(flow_obj.file))
//         return flow_obj.file+" file does not exist";

//     // try to open it
//     var stream = undefined;
//     try {
//         stream = fs.open(flow_obj.file, 'rbw');
//     } catch(e) {
//         return flow_obj.file+' file is unreadable';
//     }
//     stream.close();

//     return undefined;
// }

exports.ExtractFileManager = ExtractFileManager;
