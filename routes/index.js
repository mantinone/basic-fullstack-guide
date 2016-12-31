var express = require('express');
var router = express.Router();

//All routes in this file will have the prefix "/" on them.  See ./app.js to see how we do this.

//This route is 'localhost:300/', or just 'localhost:300'
router.get('/', function(req, res, next) {
  //The first argument below tells the us which html(or pug in our case) file to load.  The second argument is an object that is sent to that page.
  res.render('index', { title: 'Tutorial Site' });
});

module.exports = router;
