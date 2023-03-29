using MandelbrotFractal
using Documenter

DocMeta.setdocmeta!(MandelbrotFractal, :DocTestSetup, :(using MandelbrotFractal); recursive=true)

makedocs(;
    modules=[MandelbrotFractal],
    authors="behinger (s-ccs 001) <benedikt.ehinger@vis.uni-stuttgart.de> and contributors",
    repo="https://github.com/behinger/MandelbrotFractal.jl/blob/{commit}{path}#{line}",
    sitename="MandelbrotFractal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://behinger.github.io/MandelbrotFractal.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Tutorials" => [
            "Plotting" =>"tutorial/plot_mandelbrot.md",
        ],
    ],
)

deploydocs(;
    repo="github.com/behinger/MandelbrotFractal.jl",
    devbranch="main",
)
