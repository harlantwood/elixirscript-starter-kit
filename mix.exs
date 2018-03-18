defmodule ElixirscriptDemo.MixProject do
  use Mix.Project

  def project do
    [
      aliases: aliases(),
      app: :elixirscript_demo,
      compilers: Mix.compilers() ++ [:elixir_script],
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixir_script: [
        # Entry module. Can also be a list of modules
        input: ElixirscriptDemo,
        # Output path. Either a path to a js file or a directory
        output: "js/app"
      ]
    ]
  end

  defp aliases do
    [
      dep: "do deps.get, deps.clean --unused --unlock, compile"
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:elixir_script, "~> 0.32.1"}
    ]
  end
end
