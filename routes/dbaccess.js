var express = require('express');
var router = express.Router();
var db = require('../queries.js')

//Let's try accessing our database and see what we get!
router.get('/send', function( request, response ){
  //db.getAllArtwork() calls a PG-Promise Function.
  //This promise accesses our database and returns an object or an array.
  db.getAllArtwork()
  .then( artwork => {
    //.then contains our callback function. It takes one argument and calls another function.
    //This one argument will receive the return value of the promise.
    //So in this case, artwork will be an array of everything from the artwork table in our database.
    response.send( artwork )
    //The send() function simply renders our data directly in the broswer window.
    //This is super handy for debugging and figuring out what your data looks like.
  })
})

//I can see one thing missing in the above function.  We've got an array of artwork,
//but we don't have an easy way for our html/pug page to reference that array.
//Let's name it by putting it in an object.  Go to localhost:3000/send and
//localhost:3000/send/json and note the difference.
router.get('/send/json', function( request, response ){
  db.getAllArtwork()
  .then( artwork => {
    response.send( {artwork} )
  //Now we can see that the 'artwork' property contains our array as a value.
  })
})

//Now that we know what our data looks like, we can render it on a webpage.
router.get('/', function( request, response ){
  db.getAllArtwork()
  .then( artwork => {
    response.render('artpage', {artwork})
  })
})

module.exports = router
