# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :chatty,
  ecto_repos: [Chatty.Repo]

config :chatty_web,
  ecto_repos: [Chatty.Repo],
  generators: [context_app: :chatty]

# Configures the endpoint
config :chatty_web, ChattyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DDW75FpR9JpvPgVzShNsOHK7RvmCvg3uaN2JVFSZdCRK7j9/hp2P4SanWj1v5j7/",
  render_errors: [view: ChattyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Chatty.PubSub,
  live_view: [signing_salt: "toSDPz5x"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
