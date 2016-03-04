defmodule Rumbl.Repo.Migrations.HashPasswords do
  use Ecto.Migration

  def up do
    ["djj", "lqq", "tzy"]
    |> Enum.each(fn username ->
      user = Rumbl.Repo.get_by(Rumbl.User, username: username)
      changeset = Ecto.Changeset.change(user,
        password_hash: Comeonin.Bcrypt.hashpwsalt(user.password_hash))

      {:ok, _model} = Rumbl.Repo.update(changeset)
    end)
  end

  def down do
    %{
      "djj" => "jingjingduan",
      "lqq" => "qingqinglin",
      "tzy" => "zhiyongtao",
    } |> Enum.each(fn {username, password_hash} ->
      user = Rumbl.Repo.get_by(Rumbl.User, username: username)
      changeset = Ecto.Changeset.change(user, password_hash: password_hash)

      {:ok, _model} = Rumbl.Repo.update(changeset)
    end)
  end
end
