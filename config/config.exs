# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :web, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Uhvtzupvy+FdJ8iyy5q+q/8NNFOzmcHqpKhZo1Mxipo9hpdb9hs2mMIYjIuFcpp5",
  render_errors: [view: Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

           config :web, Repo,
             adapter: Ecto.Adapters.Postgres,
             database: "neno",
             username: "postgres",
             password: "postgres",
             hostname: "localhost",
             # OR use a URL to connect instead
             url: "postgres://postgres:postgres@localhost/ecto_simple"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
