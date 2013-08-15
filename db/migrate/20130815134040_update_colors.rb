class UpdateColors < ActiveRecord::Migration
  def change
    execute "UPDATE colors SET color_family_id = 1 WHERE color_foundation = 'B' ;"
    execute "UPDATE colors SET color_family_id = 2 WHERE color_foundation = 'WB';"
    execute "UPDATE colors SET color_family_id = 3 WHERE color_foundation = 'WG';"
    execute "UPDATE colors SET color_family_id = 4 WHERE color_foundation = 'W' ;"
    execute "UPDATE colors SET color_family_id = 5 WHERE color_foundation = 'CG';"
    execute "UPDATE colors SET color_family_id = 6 WHERE color_foundation = 'CB';"
  end
end
