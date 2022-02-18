defmodule Blogger.StoreFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Blogger.Store` context.
  """

  @doc """
  Generate a author.
  """
  def author_fixture(attrs \\ %{}) do
    {:ok, author} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name",
        last_name: "some last_name",
        twitter_account: "some twitter_account"
      })
      |> Blogger.Store.create_author()

    author
  end
end
