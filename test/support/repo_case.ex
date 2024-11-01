defmodule Friends.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias Friends.Repo

      import Ecto
      import Ecto.Query
      import Friends.RepoCase
    end
  end
end
