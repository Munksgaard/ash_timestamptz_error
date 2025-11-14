import Config

config :ash_timestamptz_error, AshTimestamptzError.Repo,
  database: "ash_timestamptz_error_dev",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :ash, policies: [show_policy_breakdowns?: true]
