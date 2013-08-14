class AddProductWarrantyToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_warranty_id, :integer
  end
end
