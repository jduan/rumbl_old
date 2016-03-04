defmodule Rumbl.Repo.Migrations.InsertUsers do
  use Ecto.Migration

  def up do
    execute """
      insert into users(name, username, password_hash, inserted_at, updated_at)
      values('Jingjing Duan', 'djj', 'jingjingduan', now(), now());
    """
    execute """
      insert into users(name, username, password_hash, inserted_at, updated_at)
      values('Qingqing Lin', 'lqq', 'qingqinglin', now(), now());
    """
    execute """
      insert into users(name, username, password_hash, inserted_at, updated_at)
      values('Zhiyong Tao', 'tzy', 'zhiyongtao', now(), now());
    """
  end

  def down do
    execute """
      delete from users where username = 'djj';
    """
    execute """
      delete from users where username = 'lqq';
    """
    execute """
      delete from users where username = 'tzy';
    """
  end
end
