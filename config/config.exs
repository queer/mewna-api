# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :api, ApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "z65DVnkW0cxcj/bGkFnNo6+AHfytTG67MzCiw8sBw3y8pOBy+nsJdr7qjyMvPfde",
  render_errors: [view: ApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Api.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :mime, :types, %{
  "application/x.vnd.mewna+b" => ["mewna"]
}

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
