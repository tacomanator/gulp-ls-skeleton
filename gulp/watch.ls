require! {
  gulp
  areas: \./config .areas
}

gulp.task \watch ->
  for area in areas
    gulp.watch "source/#{area}/**/*.ls",   ["build-#{area}-scripts"]
    gulp.watch "source/#{area}/**/*.jade", ["build-#{area}-html"]
    gulp.watch "source/#{area}/**/*.styl", ["build-#{area}-styles"]
