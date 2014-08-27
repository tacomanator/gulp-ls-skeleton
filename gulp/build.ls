require! {
  gulp:       \gulp
  jade:       \gulp-jade
  stylus:     \gulp-stylus
  livescript: \gulp-livescript
  nib:        \nib # CSS3 extensions for Stylus
  notify:     \gulp-notify # OS Notifications for Gulp
  connect:    \gulp-connect # For webserver (with LiveReload)
}


build-steps =
  \build-scripts
  \build-html
  \build-styles


gulp.task \build-scripts, ->

  gulp.src "source/*.ls"
    .pipe livescript()
    .pipe gulp.dest(\build/js/)
    .pipe connect.reload()
    .pipe notify("Completed build-scripts")

gulp.task \build-html, ->
  gulp.src "source/*.jade"
    .pipe jade()
    .pipe gulp.dest("build/")
    .pipe connect.reload()
    .pipe notify("Completed build-html")

gulp.task \build-styles, ->

  gulp.src "source/*.styl"
    .pipe stylus(use: [nib()])
    .pipe gulp.dest(\build/css/)
    .pipe connect.reload()
    .pipe notify("Completed build-styles")


gulp.task \build, build-steps
