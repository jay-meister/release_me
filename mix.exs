defmodule ReleaseMe.MixProject do
  use Mix.Project

  def project do
    [
      app: :release_me,
      version: "0.1.1",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: []
    ]
  end

  def application, do: [mod: {ReleaseMe.Application, []}, extra_applications: [:logger]]
end
