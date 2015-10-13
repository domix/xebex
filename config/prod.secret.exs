use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :xebex, Xebex.Endpoint,
  secret_key_base: "iFZ39V6kXCRmOPvPrMoBtumkEfQw4HQe7B3kZXV/15eHdiMOmRZrtFr2RwADnCH+"

# Configure your database
config :xebex, Xebex.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "xebex_prod",
  pool_size: 20
