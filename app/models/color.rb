class Color < ActiveRecord::Base
  belongs_to :color_palette
  validates_presence_of :color_palette_id, :color_number, :name

  def image
    case color_palette.name.downcase
    when "stone"
      "/assets/wallbase/stone/#{color_number}.jpg"
    when "wood"
      "/assets/wallbase/wood/#{color_number}.jpg"
    when "wall art"
      "/assets/wallbase/wallart/#{color_number}.jpg"
    end
  end
end
