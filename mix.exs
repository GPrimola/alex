defmodule Alex.MixProject do
  use Mix.Project

  @app :alex
  @version "0.1.0"
  @description "Amazon Alexa SDK written in Elixir"
  @source_url "https://github.com/GPrimola/alex"
  @licenses ["Apache-2.0"]

  def project do
    [
      app: @app,
      version: @version,
      description: @description,
      source_url: @source_url,
      homepage_url: "https://hex.pm/packages/#{@app}",
      package: package(),
      docs: docs(),
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  def package do
    [
      name: "jenkiexs",
      licenses: @licenses,
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      source_url: @source_url
      # logo: @logo_path
    ]
  end
end
