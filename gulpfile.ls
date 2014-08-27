require! {
  gulp
  \./gulp/clean
  \./gulp/build
  \./gulp/serve
  \./gulp/watch
  \./gulp/open
  open:  \gulp-open
}

gulp.task \default, [\clean, \build], ->
  gulp.start \serve, \watch, \open
