import Config

config :my_app, Friends.Repo,
  username: "postgres",
  password: "postgres",
  database: "friends_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
