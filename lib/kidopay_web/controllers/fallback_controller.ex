defmodule KidopayWeb.FallbackController do
  use KidopayWeb, :controller
  alias Kidopay.Error
  alias KidopayWeb.ErrorView

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
