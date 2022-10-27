defmodule Kidopay.Repo do
  use Ecto.Repo,
    otp_app: :kidopay,
    adapter: Ecto.Adapters.Postgres
end
