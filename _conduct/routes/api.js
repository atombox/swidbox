var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { app:'app', dir:'./', stylesheets:'', src:'app', appscript:'js/app/app.js' });
});

module.exports = router; 
