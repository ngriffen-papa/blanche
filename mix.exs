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
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false}
    ]
  end
end
