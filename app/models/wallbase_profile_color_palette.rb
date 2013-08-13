class WallbaseProfileColorPalette < ActiveRecord::Base
  belongs_to :wallbase_profile
  belongs_to :color_palette
end