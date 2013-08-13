class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :product_family
      t.string :sku
      t.string :part_number
      t.references :product_thickness
      t.references :product_width
      t.references :product_length
      t.references :wallbase_profile
      t.timestamps
    end
  end
end
