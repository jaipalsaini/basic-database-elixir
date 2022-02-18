defmodule Blogger.Users.User do
  use Ecto.Schema
  alias Blogger.Users.Role
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :email, :string

    belongs_to :role, Role
  end
  def changeset(user, changes \\ %{}) do
    user
    |> cast(changes, [:name, :email])
    |> validate_required([:name, :email])
  end
end
