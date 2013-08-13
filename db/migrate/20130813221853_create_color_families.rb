class CreateColorFamilies < ActiveRecord::Migration
  def change
    create_table :color_families do |t|
      t.string :name
      t.timestamps
    end
  end
end
