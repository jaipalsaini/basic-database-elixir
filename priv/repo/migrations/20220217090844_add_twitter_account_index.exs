defmodule Blogger.Repo.Migrations.AddTwitterAccountIndex do
  use Ecto.Migration

  def change do

      create unique_index(:authors, [:twitter_account])

  end
end
