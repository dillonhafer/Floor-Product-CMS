class CreateProductFamilies < ActiveRecord::Migration
  def change
    create_table :product_families do |t|
      t.references :product_category
      t.string :name
      t.string :sample_code
      t.timestamps
    end
  end
end
