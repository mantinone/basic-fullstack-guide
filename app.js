var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

//DEFINING ROUTES STEP 1: These variables define which files our project looks for routes in.
var index = require('./routes/index');
var users = require('./routes/users');
var hardCoded = require('./routes/hardCoded')
var dbaccess = require('./routes/dbaccess')

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//DEFINING ROUTES STEP 2: These functions tell our program to look at the paths defined above when it receives a certain url.  We can use this to create a "prefix" for our routes.  See ./routes/hardCoded for more info.
app.use('/', index);
app.use('/users', users);
app.use('/hardCoded', hardCoded);
app.use('/dbaccess', dbaccess);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
