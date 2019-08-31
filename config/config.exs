# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :redirect_demo, RedirectDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "l7UgBK/wLDvd3AsDtNLriWh89fE4iS5gR/Tdkgn0AGXRWR5ssclzKmarsrbVqFw1",
  render_errors: [view: RedirectDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RedirectDemo.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "3TN33C6BzzqJ564yQEJz4LQeIAsWHgH9"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
