defmodule Blogger.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :author_id, references(:authors)

      timestamps()
    end
  end
end
