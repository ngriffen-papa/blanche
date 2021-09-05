defmodule Blanche.Repo do
  use Ecto.Repo,
    otp_app: :blanche,
    adapter: Ecto.Adapters.Postgres
end
