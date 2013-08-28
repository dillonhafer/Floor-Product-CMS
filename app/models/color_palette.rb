class ColorPalette < ActiveRecord::Base
  validates_presence_of :name, :order_number
  validates_uniqueness_of :name

  has_many :colors, dependent: :destroy
  has_many :profile_color_palettes, dependent: :destroy
  has_many :profiles, through: :profile_color_palettes, dependent: :destroy

  scope :ordered, -> {order(:order_number)}
  scope :labels,  -> {order(:id).limit(6)}

  def css_class
    "color-palette-#{name.gsub(' ', '-').downcase}"
  end

  def formal_name
    "Palette - #{name}"
  end
end
