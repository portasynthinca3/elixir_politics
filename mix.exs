defmodule Politics.MixProject do
  use Mix.Project

  def project do
    [
      app: :politics,
      description: "Allows you to start communist and anarchist revolutions in your BEAM VM",
      version: "0.1.1",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: [
        {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      ],
      package: package(),
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      name: :politics,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["portasynthinca3"],
      licenses: ["WTFPL"],
      links: %{"GitHub" => "https://github.com/portasynthinca3/politics"}
    ]
  end
end
