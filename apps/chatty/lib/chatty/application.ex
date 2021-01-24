defmodule Chatty.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Chatty.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Chatty.PubSub}
      # Start a worker by calling: Chatty.Worker.start_link(arg)
      # {Chatty.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Chatty.Supervisor)
  end
end
