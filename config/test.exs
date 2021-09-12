import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :blanche, Blanche.Repo,
  username: "postgres",
  password: "postgres",
  database: "blanche_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10,
  log: false

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blanche, BlancheWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  server: false

# In test we don't send emails.
config :blanche, Blanche.Mailer, adapter: Swoosh.Adapters.Test

config :blanche, producer_module: {Broadway.DummyProducer, []}

config :logger_json, :backend, level: :warn
# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
