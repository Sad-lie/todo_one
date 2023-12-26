defmodule Todo.Repo.Migrations.CreateItemList do
  use Ecto.Migration

  def change do
    create table(:item_list) do
      add :title, :string
      add :field, :string

      timestamps(type: :utc_datetime)
    end
  end
end
