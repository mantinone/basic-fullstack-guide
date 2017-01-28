# Project Setup

I created this repo on github, using the Node .gitignore option and the MIT license.  On my computer, I already have node.js and postgresql installed globally.  For the project, I installed express generator.  `$ npm install express-generator -g` installs this program globally.

`express --view=pug` Will run express generator to set up a basic Node project with pug for our HTML template engine.


I also ran `npm install -S pg-promise` to install PG-promise and save it to our package.json file.  We save things to package.json like this so anyone who downloads our project can install all dependencies automatically by running `npm install`.
