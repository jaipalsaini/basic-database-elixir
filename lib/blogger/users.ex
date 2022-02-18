defmodule Blogger.Users do
  alias Blogger.Users.{Role, User}
  alias Blogger.Repo
  @doc """
  create a changeset to change a user
  """
  @spec change_user(User.t(), map())::Ecto.Changeset.t()

  def change_user(user, changes \\ %{}) do
    User.changeset(user, changes)
  end
    @doc """
  Create a user.
  """
  @spec create_user(map()) :: {:ok, User.t()} | {:error, Ecto.Changeset.t()}
  def create_user(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

   @doc """
  List all the roles in the database.
  """
  @spec list_roles :: list(Role.t())
  def list_roles() do
    Repo.all(Role)
  end
end
