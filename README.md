Gulp based web/hybrid app skeleton.

* LiveScript (using lsc-gulp and gulp-livescript)
* Dev server (using connect)
* LiveReload
* Browserify
* Desktop notifications
* Clean gulpfile structure

While the example Jade and Stylus + Nib for pre-built (compiled) templates and stylesheets, these choices can be easily changed by updating gulp/build.ls.

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

### Structure

#### Areas

Occassionally you may want to break SPAs (single page applications) into parts (to improve load performance of a large SPA, for example). Each area is like a separate app, but may share some things with other areas. The convention followed by this skeleton is to create a folder under source with an entry point (index.jade file). Presently the builder also expects an index.ls and index.styl to go along with it. Areas will be detected and built automatically. The root of source/ also acts like an area, if an index.jade is present.