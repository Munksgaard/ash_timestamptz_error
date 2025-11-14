defmodule AshTimestamptzError.Foos.Foo do
  use Ash.Resource,
    otp_app: :ash_timestamptz_error,
    domain: AshTimestamptzError.Foos,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "foos"
    repo AshTimestamptzError.Repo
  end

  actions do
    defaults [:read, :create]
    default_accept [:bar]
  end

  attributes do
    integer_primary_key :id

    attribute :bar, AshPostgres.Timestamptz, allow_nil?: false
  end

  calculations do
    calculate :past_bar?, :boolean, expr(bar <= now())
  end
end
