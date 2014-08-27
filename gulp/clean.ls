require! {
  gulp
  rimraf:  \gulp-rimraf
}

gulp.task \clean, ->
  gulp.src \./build, read: false
    .pipe rimraf()
