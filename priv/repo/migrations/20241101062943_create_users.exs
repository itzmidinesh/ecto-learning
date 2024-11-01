defmodule Friends.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :full_name, :string
      add :email, :string
      add :avatar_url, :string
      add :confirmed_at, :utc_datetime
      add :profile, :map

      timestamps(type: :utc_datetime)
    end
  end
end
