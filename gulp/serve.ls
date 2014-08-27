require! {
  gulp
  connect:  \gulp-connect
}

gulp.task \serve, ->

  connect.server do
    root: \build
    livereload: true
