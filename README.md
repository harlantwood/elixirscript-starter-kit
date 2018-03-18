# ElixirscriptDemo

"Hello World" demo for getting started with [ElixirScript](https://github.com/elixirscript/elixirscript).

## Running

```
mix deps.get
mix compile

cd js
yarn install
yarn serve
```

Open http://localhost:1234/

You should see the output produced by `ElixirscriptDemo.hello()` in the console.

# Build production bundle

```
mix deps.get
mix compile

cd js
yarn install
yarn build
```

Your HTML and JS bundle will be in the `./js/dist/` dir.