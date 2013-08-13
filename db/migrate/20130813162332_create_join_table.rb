class CreateJoinTable < ActiveRecord::Migration
  def change
    execute "CREATE TABLE wallbase_profile_color_palettes
              (
                wallbase_profile_id integer NOT NULL,
                color_palette_id integer NOT NULL,
                CONSTRAINT wallbase_profile_color_palettes_pkey PRIMARY KEY (wallbase_profile_id , color_palette_id )
              )"
  end
end
