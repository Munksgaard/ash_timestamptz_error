defmodule AshTimestamptzError.Foos do
  use Ash.Domain,
    otp_app: :ash_timestamptz_error

  resources do
    resource AshTimestamptzError.Foos.Foo
  end
end
