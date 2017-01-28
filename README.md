# Express-Pug-Postgress basic full-stack guide
This repo aims to be a helpful guided tour of how to build a basic full-stack web app using Node.js and postgresql.  It assumes you already have a fundamental understanding of javascript and know how to clone a repository from github.

This README will help you get setup and take you step by step through the project to highlight different parts of the process and help you understand what's going on.

### Our Stack

This project uses the following packages.

* Pug - Our Templating Engine.  Templating engines allow us to construct html pages at runtime with Javascript commands and variables.
* Node - Our Server
* Express - A framework for interfacting with Node
* Postgres - for our database
* SQL and PG Promise - for accessing the database

## Setup

Let's get set up!  If you haven't installed Node, [do that first](https://docs.npmjs.com/getting-started/installing-node).  Then, clone the repository.  In the terminal, navigate to your repo's root folder and make sure you have postgresql running. Then, run the following terminal commands.

```
npm install
npm run db:create
npm run db:seed
```
The first line will install all packages listed as dependencies in the **"package.json"** file in our project root.
We've also already defined several scripts in **"package.json"**, which we also use above.

Now you should be ready to run `npm start` to start up your server, then go to the url `localhost:3000` in your web browser to see the webpage!

Our landing page contains an example of using a loop in pug to build your webpage.  Try going to './views/index.pug' and play around with that code to understand how pug works.  Just make your changes, save the file, and refresh the page in your browser.

## The Walkthrough

### Step 1: Displaying webpages with JS variables.

The first step to understanding how to work with the backend is to understand how a webpage can work with JSON objects.  Let's look at some routes, which are functions that tell our server what to do when it receives certain input.  To start with, we have routes that load a page when you enter a specific url.

Check out **"./routes/hardCoded.js"**.  Here you'll see two objects with some data, and Express routes that will render two pug pages using those objects.  Check out the pug files **"./views/hardCoded.pug"** and **"./views/characters.pug"** to see how we use the data from those objects to display our pages.  The comments in each file will walk you through what's going on.

To use those routes and see the pages for yourself, go to your browser and enter the urls `localhost:3000/hardcoded`, `lolalhost:3000/hardcoded/newtitle`, `localhost:3000/hardcoded/safeedit`, and `localhost:3000/hardcoded/adventure`

To see the data that each of these pages is working with, add **/json** to the end of any of those URLs. I highly recommend getting a JSON-viewer extension for your browser to make these easier to read. It will be important as the tutorial goes on. [This is a good one](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=en)

### Step 2: Getting Data from the Database

### Step 3: Displaying Webpages with Data from the Database

### Step 4: More complicated queries?

### Step 5: Adding or modifying data from the database!
