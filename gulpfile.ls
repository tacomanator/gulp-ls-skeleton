require! {
  gulp
  path
  glob
  \./gulp/clean
  \./gulp/build
  \./gulp/serve
  \./gulp/watch
  \./gulp/open
  open:  \gulp-open
}

gulp.task \default, [\build], ->
  gulp.start \serve, \watch, \open
