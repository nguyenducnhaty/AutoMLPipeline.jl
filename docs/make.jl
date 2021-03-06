using Documenter, AutoMLPipeline

makedocs(
  source = "src",
  build = "build",
  modules = [AutoMLPipeline],
  clean = true,
  sitename = "AutoMLPipeline Documentation",
  doctest = false,
  pages = Any[
    "HOME" => "index.md",
    "Tutorial" => Any[
       "tutorial/pipeline.md",
       "tutorial/preprocessing.md",
       "tutorial/learning.md",
       "tutorial/extending.md"
    ],
    "Manual" => Any[
      "Pipeline" => "man/pipeline.md",
      "Preprocessors" => "man/preprocessors.md",
      "Learners" => "man/learners.md",
      "Meta-Ensembles" => "man/metaensembles.md"
    ],
    "Library" => Any[
      "Types and Functions" => "lib/typesfunctions.md"
    ]
  ],
  format = Documenter.HTML(
     prettyurls = get(ENV, "CI", nothing) == "true"
  )
)

deploydocs(
    repo   = "github.com/IBM/AutoMLPipeline.jl.git",
)
