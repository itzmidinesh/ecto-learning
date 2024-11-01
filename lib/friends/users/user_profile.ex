defmodule Friends.UserProfile do
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field :online, :boolean
    field :dark_mode, :boolean
    field :visibility, Ecto.Enum, values: [:public, :private, :friends_only]

    timestamps(type: :utc_datetime)
  end

  def changeset(profile, attrs) do
    profile
    |> cast(attrs, [:online, :dark_mode, :visibility])
    |> validate_required([:online, :visibility])
  end
end
