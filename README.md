# moonwell-example-lib

A tiny library for testing [Moonwell](https://github.com/mdlsvensson/moonwell)'s library support. It has one plain Lua
module, one YueScript module that uses it, and one global-style Lua file, all under `src/`:

| Module | File | Gives you |
| --- | --- | --- |
| `example.greet` | `src/example/greet.lua` | `hello(name)`, a greeting string |
| `example.loud` | `src/example/loud.yue` | `shout(name)`, the greeting in capitals |
| `example.globals` | `src/example/globals.lua` | the globals `ExampleVersion` and `ExampleAdd(a, b)` |

Since `v0.2.0` it also ships one file for the map, and says so in `moonwell-library.json`:

| File | Imported into the map as |
| --- | --- |
| `assets/war3mapImported/example/hello.txt` | `war3mapImported\example\hello.txt` |

Use it from a Moonwell project's `moonwell.pkl` (Moonwell 0.6.0 or later; the library's own file names its `src`
folder):

```pkl
libraries {
  ["example"] { github = "mdlsvensson/moonwell-example-lib"; tag = "v0.2.0" }
}
```

With an older Moonwell, use `v0.1.0` and name the folder: `tag = "v0.1.0"; dir = "src"`.

```yue
import "example.loud"
require "example.globals"
print loud.shout "Moonwell"
print ExampleAdd 1, 2
```

Its tags are part of Moonwell's tests: don't move or delete them.
