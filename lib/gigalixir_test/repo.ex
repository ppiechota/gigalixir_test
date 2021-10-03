defmodule GigalixirTest.Repo do
  use Ecto.Repo,
    otp_app: :gigalixir_test,
    adapter: Ecto.Adapters.Postgres
end
