var express = require('express');
var router = express.Router();

//All routes in this file will have the prefix "/hardCoded/" on them.  See ./app.js to see how we do this.
//We will use express routes and pug to display values from an Object on our webpages.

//First, let's define the hard-coded Objects we'll be using.
//Try editing the values of these objects, then refresh the webpage to see how they change.
const displayObject = {
  title: 'Hard-Coded values',
  description: 'This text is a hard-coded variable found in ./routes/hardCoded.js'
}
const adventureParty = {
  title: 'Today we adventure with...',
  partyArray: [
  { name: 'Thioridan',
    job: 'Ranger',
    species: 'Half-Elf'},
  { name: 'Strummy',
    job: 'Bard',
    species: 'Changeling'},
  { name: 'Westra',
    job: 'cleric',
    species: 'Human'},
  { name: 'Rickdak',
    job: 'Rogue',
    species: 'Half-Orc'},
  { name: 'Nayola',
    job: 'Wizard',
    species: 'Svirfneblin'}
  ]
}

//App.js receives the 'hardCoded' prefix, so this route is called when we enter
//'localhost:3000/hardCoded' as our url
router.get('/', function( request, response ) {
  //We're going to render './views/hardcoded', and we'll render it with displayObject.
  response.render('hardcoded', displayObject);
});

// 'localhost:3000/hardCoded/newtitle'
router.get('/newTitle', function( request, response ) {
  //We can change an object before displaying it!
  displayObject.title = 'Value Edited!'
  displayObject.description = 'These values are now changed for the whole site.'
  //Doing it like this changes that object for the whole site.  Go back to '/hardCoded/' and you'll see the title stays the same!
  response.render('hardcoded', displayObject);
})

router.get('/safeEdit', function( request, response ) {
  //This time we'll first create a new object based on displayObject
  let safeObject = Object.create(displayObject)
  safeObject.title = 'Non-destructive Editing!'
  safeObject.description =   'Now when we edit safeObject.title, displayObject remains unchanged.'
  //Now when we edit safeObject.title, displayObject remains unchanged.
  response.render('hardcoded', safeObject);
})

// 'localhost:3000/hardCoded/adventure'  This route uses an object with an array so that we can see how to display an arbitrary number of items.
router.get('/adventure', function( request, response ) {
  response.render('characters', adventureParty);
})





//The below routes all use the same logic as the above, but they uses response.send() instead of response.render().  This simply renders a JSON object to the screen.  Tack '/json' onto the end of any of the urls in this file to call these routes and see the object that the page is working with.
router.get('/json', function( request, response ) {
  response.send(displayObject)
})

router.get('/newTitle', function( request, response ) {
  displayObject.title = 'Value Edited!'
  displayObject.description = 'These values are now changed for the whole site.'
  response.send(displayObject);
})

router.get('/safeEdit', function( request, response ) {
  let safeObject = Object.create(displayObject)
  safeObject.title = 'Non-destructive Editing!'
  safeObject.description =   'Now when we edit safeObject.title, displayObject remains unchanged.'
  response.send(safeObject);
})

router.get('/adventure/json', function( request, response ) {
  response.send(adventureParty);
})

module.exports = router;
