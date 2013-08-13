class CreateWallbaseProfiles < ActiveRecord::Migration
  def change
    create_table :wallbase_profiles do |t|
      t.references :wallbase_style_type
      t.float :size
      t.string :name
      t.string :uuid
      t.timestamps
    end
  end
end
