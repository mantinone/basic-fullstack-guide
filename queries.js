const databaseName = 'fullstack-example'
const connectionString = process.env.DATABASE_URL || `postgres://${process.env.USER}@localhost:5432/${databaseName}`
const pgp = require('pg-promise')();
const db = pgp( connectionString );

//Here we create a simple SQL query string for our PGP function to use.
const allArtwork = 'SELECT * FROM artwork'
//PGP's any() function will return an array of results.
//It contains a promise, so when we use the function later, it will need a callback function.
const getAllArtwork = () => db.any( allArtwork )

module.exports = { getAllArtwork }
