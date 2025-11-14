defmodule AshTimestamptzError.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [AshTimestamptzError.Repo]

    opts = [strategy: :one_for_one, name: AshTimestamptzError.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
