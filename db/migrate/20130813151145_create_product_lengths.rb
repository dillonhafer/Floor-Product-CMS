class CreateProductLengths < ActiveRecord::Migration
  def change
    create_table :product_lengths do |t|
      t.string :name
      t.timestamps
    end
  end
end
