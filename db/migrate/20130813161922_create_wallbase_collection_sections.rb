class CreateWallbaseCollectionSections < ActiveRecord::Migration
  def change
    create_table :wallbase_collection_sections do |t|
      t.references :wallbase_collection
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
