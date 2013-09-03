class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :joh_users, :admin, :boolean
  end
end
