defmodule Friends.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :full_name, :string
    field :email, :string
    field :avatar_url, :string
    field :confirmed_at, :utc_datetime
    embeds_one :profile, Friends.UserProfile, on_replace: :update

    timestamps(type: :utc_datetime)
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:full_name, :email, :avatar_url])
    |> validate_required([:full_name, :email])
    |> cast_embed(:profile, required: true, with: &Friends.UserProfile.changeset/2)
  end
end
