# MathRacer

```
git clone https://github.com/willus10245/math_racer
cd math_racer
iex -S mix
```

This is a simple application that demonstrates some of the basics of interacting with processes in Elixir.
It has one top level function: `MathRacer.race/1` that takes a number. It then spawns that number of `MathRacer.Adder`s, which perform a complicated mathematical operation (1 + 2), and respond to the `MathRacer.Coordinator` module with the result and how long it to perform. The Coordinator waits for all the results to come in and then calculates the average time it took each process to perform its operation.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `math_racer` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:math_racer, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/math_racer](https://hexdocs.pm/math_racer).

