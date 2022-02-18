defmodule Blogger.Store.Author do
  use Ecto.Schema
  import Ecto.Changeset
 alias Blogger.Store.Book
  schema "authors" do
    field :first_name, :string
    field :last_name, :string
    field :twitter_account, :string
    has_many :books, Book
    timestamps()
  end

  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs, [:first_name, :last_name, :twitter_account])
    |> validate_required([:first_name, :last_name, :twitter_account])
    |> validate_length(:first_name, max: 255)
    |> validate_length(:twitter_account, max: 15)
    |> unique_constraint(:twitter_account)
  end
end
