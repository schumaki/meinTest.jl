using meinTest
using Documenter

DocMeta.setdocmeta!(meinTest, :DocTestSetup, :(using meinTest); recursive=true)

makedocs(;
    modules=[meinTest],
    authors="Aaron Peikert, Maximilian S. Ernst, Nicklas Hafiz",
    repo="https://github.com/schumaki/meinTest.jl/blob/{commit}{path}#{line}",
    sitename="meinTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://schumaki.github.io/meinTest.jl",
        edit_link="devel",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/schumaki/meinTest.jl",
    devbranch="devel",
)
