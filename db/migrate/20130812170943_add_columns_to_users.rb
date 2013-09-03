class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :joh_users, :provider, :string
    add_column :joh_users, :uid, :string
    add_column :joh_users, :name, :string
  end
end
