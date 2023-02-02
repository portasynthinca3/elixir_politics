# Elixir politics

## Installation
```elixir
def deps do
  [
    {:politics, "~> 0.1.1"}
  ]
end
```

## Communism
A man once said to abolish the `classes` or something like that. Elixir doesn't have classes, so we thank our workers and terminate all non-workers.
```
Erlang/OTP 24 [erts-12.3.2.8] [source] [64-bit] [smp:16:12] [ds:16:12:10] [async-threads:1] [jit]

Interactive Elixir (1.14.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Communism.revolution
System process <0.6.0> terminated: die_pig

Crash dump is being written to: erl_crash.dump...done
```
Aw jeez! It looks like the BEAM VM doesn't like communism :(

## Anarchy
A man once said to abolish the `state` or something like that. Fortunately for us, Elixir keeps state in predefined locations so that's quite easy to do!
```
Erlang/OTP 24 [erts-12.3.2.8] [source] [64-bit] [smp:16:12] [ds:16:12:10] [async-threads:1] [jit]

Compiling 1 file (.ex)
Interactive Elixir (1.14.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Anarchy.revolution
*** ERROR: Shell process terminated! (^G to start new job) ***
```
Aw jeez!!! It looks like BEAM processes don't like it when their state gets erased!

## Acknowledgements
Inspired by <https://github.com/jokteur/python_communism>
