# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kidopay,
  ecto_repos: [Kidopay.Repo]

# Configures the endpoint
config :kidopay, KidopayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Y3SdF3TuhlRN80oviBrkyXRsUMy38HqzghsQ1Qh2aitjCOoHDyygtDBMg0V9zWm+",
  render_errors: [view: KidopayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Kidopay.PubSub,
  live_view: [signing_salt: "Z7GtqMFa"]

config :kidopay, KidopayWeb.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
