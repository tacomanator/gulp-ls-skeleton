Gulp based web/hybrid app skeleton.

* LiveScript (using lsc-gulp and gulp-livescript)
* Dev server (using connect)
* LiveReload support
* Desktop notifications
* Clean gulpfile structure

While the example Jade and Stylus + Nib for pre-built (compiled) templates and stylesheets, these choices can be easily changed by updating gulp/build.ls

### Setup

There are two ways to integrate LiveScript & Gulp:

1. Write gulp source files in plain JavaScript and use gulp
2. Write gulp source files in LiveScript and use lsc-gulp

This example uses option #2. Therefore to get started:

    $ npm install
    $ npm install -g lsc-gulp

When using Gulp examples from the web, replace gulp with lsc-gulp wherever gulp is used on the command line.

### Running

Build & run project:

    $ lsc-gulp

Build only:

    $ lsc-gulp build

Clean only:

    $ lsc-gulp clean