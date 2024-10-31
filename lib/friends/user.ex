defmodule Friends.User do
  use Ecto.Schema

  schema "users" do
    field :full_name, :string
    field :email, :string
    field :avatar_url, :string
    field :confirmed_at, :utc_datetime

    embeds_one :profile, Profile do
      field :online, :boolean
      field :dark_mode, :boolean
      field :visibility, Ecto.Enum, values: [:public, :private, :friends_only]
    end

    timestamps()
  end
end
