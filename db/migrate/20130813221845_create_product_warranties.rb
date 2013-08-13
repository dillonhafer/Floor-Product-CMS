class CreateProductWarranties < ActiveRecord::Migration
  def change
    create_table :product_warranties do |t|
      t.string :name
      t.timestamps
    end
  end
end
