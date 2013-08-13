class CreateWallbaseCollections < ActiveRecord::Migration
  def change
    create_table :wallbase_collections do |t|
      t.string  :name
      t.string  :material
      t.boolean :icon_1
      t.boolean :icon_2
      t.boolean :icon_3
      t.boolean :icon_4
      t.boolean :icon_5
      t.text    :collection_description
      t.timestamps
    end
  end
end
