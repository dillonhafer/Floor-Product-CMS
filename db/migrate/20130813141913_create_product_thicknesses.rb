class CreateProductThicknesses < ActiveRecord::Migration
  def change
    create_table :product_thicknesses do |t|
      t.string :name
      t.timestamps
    end
  end
end
