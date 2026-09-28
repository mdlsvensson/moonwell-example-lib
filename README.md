# moonwell-example-lib

A tiny library for testing [Moonwell](https://github.com/mdlsvensson/moonwell)'s library support. It has one plain Lua
module, one YueScript module that uses it, and one global-style Lua file, all under `src/`:

| Module | File | Gives you |
| --- | --- | --- |
| `example.greet` | `src/example/greet.lua` | `hello(name)`, a greeting string |
| `example.loud` | `src/example/loud.yue` | `shout(name)`, the greeting in capitals |
| `example.globals` | `src/example/globals.lua` | the globals `ExampleVersion` and `ExampleAdd(a, b)` |

Use it from a Moonwell project's `moonwell.pkl`:

```pkl
libraries {
  ["example"] { github = "mdlsvensson/moonwell-example-lib"; tag = "v0.1.0"; dir = "src" }
}
```

```yue
import "example.loud"
require "example.globals"
print loud.shout "Moonwell"
print ExampleAdd 1, 2
```

Its tags are part of Moonwell's tests: don't move or delete them.
