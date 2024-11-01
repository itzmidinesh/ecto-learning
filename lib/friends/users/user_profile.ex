defmodule Friends.UserProfile do
  use Ecto.Schema

  embedded_schema do
    field :online, :boolean
    field :dark_mode, :boolean
    field :visibility, Ecto.Enum, values: [:public, :private, :friends_only]
  end
end
