# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ui,
  ecto_repos: [Ui.Repo]

# Configures the endpoint
config :ui, Ui.Endpoint,
  http: [port: 80],
  url: [host: "localhost"],
  secret_key_base: "ayRwlLYlH4+87ibb8brCzNM+HPuuT6TDoVosGFsv2DERwwU1oLwqmQDMVgW3w4b2",
  root: Path.dirname(__DIR__),
  server: true,
  render_errors: [view: Ui.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ui.PubSub,
           adapter: Phoenix.PubSub.PG2]


# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# config :ui, Ui.Repo,
#   adapter: Sqlite.Ecto,
#   database: "/root/nerves.sqlite",
#   pool_size: 20

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
