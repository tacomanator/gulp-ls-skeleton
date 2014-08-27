require! {
  gulp
  open:  \gulp-open
}

gulp.task \open ->
  gulp.src \./gulp/noop.js # so gulp doesn't overlook task
    .pipe open('', url: \http://localhost:8080)
