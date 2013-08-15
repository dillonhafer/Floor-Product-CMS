class DropColorFoundationFromColors < ActiveRecord::Migration
  def change
    remove_column :colors, :color_foundation
  end
end
