defmodule KidopayWeb.UsersView do
  use KidopayWeb, :view
  alias Kidopay.User

  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User created!",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
  end

  def render("user.json", %{user: %User{} = user}), do: %{user: user}
end
