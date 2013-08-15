class AddColorFamilyIdToColors < ActiveRecord::Migration
  def change
    add_column :colors, :color_family_id, :integer
  end
end
