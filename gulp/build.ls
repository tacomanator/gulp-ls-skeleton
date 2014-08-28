require! {
  gulp:       \gulp
  jade:       \gulp-jade
  stylus:     \gulp-stylus
  livescript: \gulp-livescript
  browserify: \browserify
  source:     \vinyl-source-stream
  nib:        \nib # CSS3 extensions for Stylus
  notify:     \gulp-notify # OS Notifications for Gulp
  connect:    \gulp-connect # For webserver (with LiveReload)
  prelude:    \prelude-ls
  areas:      \./config .areas
}


{map,each} = prelude


tasks = []

areas |> each (area) ->

  tasks ++= <[ scripts html styles ]>
    |> map ("build-#{area}-" +)

  gulp.task "build-#{area}-scripts" [\clean] ->
    browserify do
      entries: ["./source/#{area}/index.ls"]
      extensions: [\.ls]
    .transform \liveify
    .bundle()
    .pipe source(\index.js)
    .pipe gulp.dest("build/#{area}/")
    .pipe connect.reload()
    .pipe notify("Completed build-scripts for #{area}")

  gulp.task "build-#{area}-html" [\clean] ->
    gulp.src "source/#{area}/index.jade"
      .pipe jade()
      .pipe gulp.dest("build/#{area}/")
      .pipe connect.reload()
      .pipe notify("Completed build-html for #{area}")

  gulp.task "build-#{area}-styles" [\clean] ->
    gulp.src "source/#{area}/index.styl"
      .pipe stylus(use: [nib()])
      .pipe gulp.dest("build/#{area}/")
      .pipe connect.reload()
      .pipe notify("Completed build-styles for #{area}")


gulp.task \build, tasks
