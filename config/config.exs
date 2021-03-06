# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :blanche,
  ecto_repos: [Blanche.Repo]

# Configures the endpoint
config :blanche, BlancheWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0NfeN6pO/cZmePWkGPkuOd5XZC3kYRuVezKmw3ASVTh4GwIPKlZg+Ua5UISirGXA",
  render_errors: [view: BlancheWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Blanche.PubSub,
  live_view: [signing_salt: "NNL8c+U+"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :blanche, Blanche.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.12.18",
  default: [
    args: ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

config :logger,
  backends: [LoggerJSON]

# Some integrations (for eg. Plug) uses metadata to log request and response parameters.
# You can replacing :all with a list of what you need.
config :logger_json, :backend, metadata: :all

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :blanche,
  producer_module:
    {BroadwayKafka.Producer,
     [
       hosts: [],
       group_id: "",
       topics: []
     ]}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
