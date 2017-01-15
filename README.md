# basic-fullstack-guide
This repo aims to be a helpful guided tour of how to build a basic full-stack web app using Node.js and postgresql.  It assumes you already have a fundamental understanding of javascript and know how to clone a repository from github.

This README will help you get setup and take you step by step through the project to highlight different parts of the process and help you understand what's going on.

### Our Stack

This project uses the following technologies.

* Pug - Our Templating Engine.  Templating engines allow us to construct html pages at runtime with Javascript commands and variables.
* Node - Our Server
* Express - A framework for interfacting with Node
* Postgres - for our database
* SQL and PG Promise - for accessing the database

## Setup

Let's get set up!  First, clone the repository.  Make sure you have postgresql running. Then, navigate to the repo's root folder in your terminal and run the following terminal commands.

```
npm install
npm run db:create
npm run db:seed
```
The first line will look in the file "package.json" in the root folder and install all node modules listed there.
We've also already defined several scripts in "package.json", which we can see in the 2nd and 3rd lines.  

Now you should be ready to run `npm start` and enter localhost:3000 in your web browser to see the webpage!

Our landing page contains an example of using a loop in pug to build your webpage.  Try going to './views/index.pug' and play around with that loop.

## The Walkthrough

### Setp 1: Displaying webpages with JS variables.

The first step to understanding how to work with the backend is to understand how a webpage can work with JSON objects.  Let's look at some routes, which are functions that tell our server what to do when it receives certain input.

Check out './routes/hardCoded.js'.  Here you'll see two objects with some data, and Express routes that will render two pug pages using those objects.  Check out the pug files './views/hardCoded.pug' and './views/characters.pug' to see how we use the data from those objects to display our pages.  The comments in each file will walk you through what's going on.

To use those routes and see the pages for yourself, go to your browser and enter the urls `localhost:3000/hardcoded`, `lolalhost:3000/hardcoded/newtitle`, `localhost:3000/hardcoded/safeedit`, and `localhost:3000/hardcoded/adventure`
