defmodule Kidopay.Users.Get do
  alias Kidopay.{Error, Repo, User}

  def by_id(id) do
    case Repo.get(User, id) do
      nil -> {:error, Error.build_user_not_found_error()}
      user -> {:ok, user}
    end
  end
end
