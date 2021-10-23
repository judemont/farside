defmodule RouterExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :privacy_revolver,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PrivacyRevolver.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.1"},
      {:plug_cowboy, "~> 2.0"},
      {:poison, "~> 5.0"},
      {:httpoison, "~> 1.8"},
      {:redix, "~> 1.1"}
    ]
  end
end
