class AddWeldrodToProducts < ActiveRecord::Migration
  def change
    add_column :products, :weldrod, :string
  end
end
