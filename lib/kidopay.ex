defmodule Kidopay do
  # alias Kidopay.Products.Create, as: ProductCreate

  # alias Kidopay.Orders.Create, as: OrderCreate

  alias Kidopay.Users.Create, as: UserCreate
  alias Kidopay.Users.Delete, as: UserDelete
  alias Kidopay.Users.Get, as: UserGet
  alias Kidopay.Users.Update, as: UserUpdate

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate delete_user(id), to: UserDelete, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate update_user(params), to: UserUpdate, as: :call
end
