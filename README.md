# ParseSKOS

**ParseSKOS** is a small Elixir module that allows to read in and parse [SKOS](http://www.w3.org/2004/02/skos/)-source files. It supports (at the moment) files in N3 and turtle-format. The parsed vocabluary is stored as dictionary (Elixir [HashDict](http://elixir-lang.org/docs/stable/elixir/HashDict.html)) of nodes, where the key is the unique descriptor-id of a concept in the vocabluary and the value is the following struct:

```elixir
defstruct broader: [], narrower: [], related: [], incoming: [], seeAlso: [], value: 0.0, prefLabel: "", altLabel: [], identifier: ""
```

**parseSKOS** comes with build-in support for two well documented and curated vocabluaries: The [Standard Thesaurus Wirtschaft (STW)](http://zbw.eu/stw/versions/latest/about) that includes terms to describe the domain of economics and the [ACM Computer Classification System](http://www.acm.org/about/class/) which aims to describe the domain of computer science. 

## Examples

Use the module as follows:

```elixir
# parse STW
ParseSKOS.ParseTurtle.get(:stw)

# parse CCS
ParseSKOS.ParseTurtle.get(:ccs)

# parse turtle-file
ParseSKOS.ParseTurtle.get(path/to/file)

# parse n3-file
ParseSKOS.ParseNTriple.get(path/to/file)
```

## TODO

Add support for raw XML!
