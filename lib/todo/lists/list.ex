defmodule Todo.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "item_list" do
    field :title, :string
    field :field, :string

    timestamps()
  end

  @doc false
  def changeset(lists, attrs) do
    lists
    |> cast(attrs, [:title, :field])
    |> validate_required([:title, :field])
  end
end
