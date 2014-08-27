require! {
  gulp
}

gulp.task \watch ->
  gulp.watch \source/*.ls,   [\build-scripts]
  gulp.watch \source/*.jade, [\build-html]
  gulp.watch \source/*.styl, [\build-styles]
