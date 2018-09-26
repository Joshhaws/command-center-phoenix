defmodule Commandcenterphoenix.Repo do
  use Ecto.Repo,
    otp_app: :commandcenterphoenix,
    adapter: Ecto.Adapters.Postgres
end
