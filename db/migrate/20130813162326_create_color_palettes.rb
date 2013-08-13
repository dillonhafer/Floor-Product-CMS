class CreateColorPalettes < ActiveRecord::Migration
  def change
    create_table :color_palettes do |t|
      t.string  :name
      t.integer :order_number
      t.timestamps
    end
  end
end
