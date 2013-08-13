class CreateProductWidths < ActiveRecord::Migration
  def change
    create_table :product_widths do |t|
      t.string :name
      t.timestamps
    end
  end
end
