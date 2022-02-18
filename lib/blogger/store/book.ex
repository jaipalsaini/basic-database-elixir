defmodule Blogger.Store.Book do
  use Ecto.Schema
  import Ecto.Changeset

  alias Blogger.Store.Author

  schema "books" do
    field :title, :string
    belongs_to :author, Author

    timestamps()
  end

  @doc false

  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :author_id])
    |> validate_required([:title, :author_id])
  end
end
