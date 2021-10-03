# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gigalixir_test,
  ecto_repos: [GigalixirTest.Repo]

# Configures the endpoint
config :gigalixir_test, GigalixirTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T6MeIQzfBAc6QbjTIF/F9FPmBl9c8/PeOx5pkq7xPAK0NJ7S54zy6/8t7eOroGDD",
  render_errors: [view: GigalixirTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GigalixirTest.PubSub,
  live_view: [signing_salt: "TQs7rW4K"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
