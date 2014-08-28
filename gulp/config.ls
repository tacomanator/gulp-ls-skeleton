require! {
  path
  glob
  prelude:  \prelude-ls
}

{map,split,tail,join} = prelude


# Areas defined by convention as
# any folder with an entry point (index.jade)
exports.areas =
  glob.sync 'source/**/index.jade'
  |> map path.dirname
  |> map split path.sep
  |> map tail
  |> map join path.sep
