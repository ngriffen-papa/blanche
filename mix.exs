defmodule MyLittleEventManager.MixProject do
  use Mix.Project

  def project do
    [
      app: :my_little_event_manager,
      deps: deps(),
      version: "0"
    ]
  end

  defp deps do
    [
      {:broadway, "~> 0.6.0"},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end
end
