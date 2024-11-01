defmodule Friends.User do
  use Ecto.Schema

  schema "users" do
    field :full_name, :string
    field :email, :string
    field :avatar_url, :string
    field :confirmed_at, :utc_datetime
    embeds_one :profile, Friends.UserProfile

    timestamps(type: :utc_datetime)
  end
end
