include ActionView::Helpers
class Color < ActiveRecord::Base
  belongs_to :color_palette
  validates_presence_of :color_palette_id, :color_number, :name

  def image
    case color_palette.name.downcase
    when "stone"
      asset_path "/assets/wallbase/stone/#{color_number}.jpg"
    when "wood"
      asset_path "/assets/wallbase/wood/#{color_number}.jpg"
    when "wall art"
      asset_path "/assets/wallbase/wallart/#{color_number}.jpg"
    end
  end
end
