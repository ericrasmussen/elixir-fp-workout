# Workout

Functional exercises to get comfortable with recursion, pipes, anonymous
functions, and function reuse in elixir.

## Installation

Once you have elixir installed (see https://elixir-lang.org/install.html), run:

```bash
git checkout https://github.com/ericrasmussen/elixir-fp-workout.git
cd elixir-fp-workout
mix deps.get
mix deps.compile
```

You can then prepare dialyzer for analysis, but it takes a very long time:

```bash
mix dialyzer --plt
```

Now you can run tests and static analysis with:

```bash
mix test
mix dialyzer
```
