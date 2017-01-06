# basic-fullstack-guide
A helpful guided tour of a super simple full stack app

Stuff I did first.

I created this repo with a Node .gitignore file.  I have installed npm, postgresql, and express generator.  This is how you do those things.  I have created a database.
```
express --view=pug
npm install
```

Then you can 
```
npm start
```
and go to localhost 3000 to see a basic website.

```
npm install -S pg-promise
``` 
To install PG-promise and save it to our package.json so you don't have to install it yourself!

## Our Stack

This page uses the following technologies.

* Pug - A Templating Engine, allows us to construct html pages with Javascript commands and variables.
* Node - Our Server
* Express - A framework for interfacting with Node
* Postgres - for our database
* SQL and PG Promise - for accessing the database

## Setup

Let's get set up!  First, clone the repository.  Make sure you have postgresql running. Then, navigate to your repository's folder in your terminal and run the following terminal commands.

```
createdb fullstack-example
psql fullstack-example -f schema.sql
psql fullstack-example -f seed.sql
npm install
```
You need to tell psql which database to act on.  The -f tells it that the following name is a file you wish to execute.
npm install will look in the file "package.json" and install all node modules listed there.

Now you should be ready to run npm start and go to localhost:3000 to see the webpage!


### Displaying webpages with JS variables.

The first step to understanding how to work with the backend is to understand how a webpage can work with JSON objects.  Check out './routes/hardCoded.js' to see our routes and the objects we're using.  The routes in that file call the pug files './views/hardCoded.pug' and './views/characters.pug'

# One
## Two
### Three
#### Four
##### Five
###### Six
