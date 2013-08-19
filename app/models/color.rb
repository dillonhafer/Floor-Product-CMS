class Color < ActiveRecord::Base
  belongs_to :color_palette
  belongs_to :color_family
  has_many :products
  validates_presence_of :color_palette_id, :color_number, :name, :color_family_id

  def image
    case color_palette.name.downcase
    when "stone"
      "wallbase/stone/#{color_number}.jpg"
    when "wood"
      "wallbase/wood/#{color_number}.jpg"
    when "wall art"
      "wallbase/wallart/#{color_number}.jpg"
    end
  end

  def color_family_name
    color_family.try(:name) || ""
  end
end
