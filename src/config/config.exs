# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :src,
  ecto_repos: [Src.Repo]

# Configures the endpoint
config :src, SrcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YCu1Uh5JncmsDfEgb5G0vzkh5AKSb8lK0QNquD49VieNeZG4GiQrVEjGHSiLAsxz",
  render_errors: [view: SrcWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Src.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
