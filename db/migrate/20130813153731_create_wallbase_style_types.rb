class CreateWallbaseStyleTypes < ActiveRecord::Migration
  def change
    create_table :wallbase_style_types do |t|
      t.string :name
      t.references :wallbase_collection
      t.timestamps
    end
  end
end
