
var console = require("console");
var fs      = require("fs");
var system  = require("system");
var q       = require("q");

var Stream  = require("io").Stream;

var Timer   = require("timers").Timer;
var EventEmitter = require('events').EventEmitter;

var __log = function(msg)
{
  console.writeln("[debug fileext.js] "+ msg);
}

function FileExtractor(id, file, timer,
    meta_store_id, meta_object_name, meta_export)
{

    if (!(this instanceof FileExtractor)) return new FileExtractor(
                                                       id,
                                                       file,
                                                       timer,
                                                       meta_store_id,
                                                       meta_object_name,
                                                       meta_export);

    __log("FileExtractor == constructor");

    this._id    = id;
    this._file  = file;
    this._timer = timer;
    this._meta_store_id    = meta_store_id;
    this._meta_object_name = meta_object_name;
    this._meta_export_id   = meta_export;

    this._file_stream = undefined;
    this._timerobj    = undefined;
}

FileExtractor.prototype.__proto__ = EventEmitter.prototype;

/**
 * @return {Array} error -if has error, else undefined
 */
FileExtractor.prototype.validateFlow = function()
{
    __log("FileExtractor.prototype.validateFlow ");

    if (!fs.exists(this._file))
            return this._file+" file does not exist";

    if ( !this.openStream() )
      return this._file + " does not exist";

    return undefined; /* no errors*/
}

FileExtractor.prototype.wakeup = function()
{
    __log("wakeup! "+this._id);
    //console.dir(system);
    console.dir(system.processStats());

}

FileExtractor.prototype.start = function()
{
  __log('start '+this._id);

  this._timerobj = new Timer();
  this._timerobj.timeout.connect( this, this.wakeup);
  this._timerobj.start(this._timer);
}

FileExtractor.prototype.stop = function()
{
  __log('stop '+this._id);

  this._timerobj.stop();
  this._timerobj.timeout.disconnect(this, this.wakeup);
  this._timerobj = undefined;
}


FileExtractor.prototype.destroy = function()
{
    __log("FileExtractorUnstructured.prototype.destroy");


    this._file_stream = undefined;

    if (this._timerobj != undefined) {
      try {
        this._timerobj.stop();
        this._timerobj.timeout.disconnect(this, this.wakeup);
        this._timerobj = undefined;
        console.dir(this);
      } catch(e) {
          console.error(e); system.exit(0);
      }

    }
    this._id    = undefined;
    this._file  = undefined;
    this._timer = undefined;

    this._meta_store_id    = undefined;
    this._meta_object_name = undefined;
    this._meta_export_id   = undefined;

}

//
//  FileExtractorUnstructured
//
function FileExtractorUnstructured(id, file, timer,
  meta_store_id, meta_object_name, meta_export)
{
  __log("FileExtractorUnstructured == constructor")
  if (!(this instanceof FileExtractorUnstructured))
                return new FileExtractorUnstructured(
                                                     id,
                                                     file,
                                                     timer,
                                                     meta_store_id,
                                                     meta_object_name,
                                                     meta_export);
  FileExtractor.call(this, id, file, timer,
                     meta_store_id, meta_object_name, meta_export);

  __log("FileExtractorUnstructured name:"+this._id+"--"+this._timer+"s");
}

FileExtractorUnstructured.prototype = new FileExtractor;
FileExtractorUnstructured.prototype.constructor = FileExtractorUnstructured;

/**
 * @return {Array} error -if has error, else undefined
 */
FileExtractorUnstructured.prototype.openStream = function()
{
   __log("openStream : "+this._file);

   if ( this._file_stream instanceof Stream)
        return true;

  try {
      this._file_stream = fs.open(this._file, "rb");
  } catch(e) {
      return false;
  }

  return true;
}


//
//  All exports
//
exports.FileExtractorUnstructured = FileExtractorUnstructured;
exports.FileExtractor = FileExtractor;
