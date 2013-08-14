class WallbaseProfile < ActiveRecord::Base
  validates_presence_of :wallbase_style_type_id, :uuid, :size
  
  belongs_to :wallbase_style_type
  has_one :wallbase_collection, through: :wallbase_style_type, dependent: :destroy
  has_many :wallbase_profile_color_palettes, dependent: :destroy
  has_many :color_palettes, through: :wallbase_profile_color_palettes, dependent: :destroy

  scope :ordered, order("id")

  def name
    self.uuid
  end

  def related_products
    self.wallbase_collection.wallbase_style_types.where("wallbase_style_types.id != ?", wallbase_style_type.id).order('random()').limit(5)
  end

  def color_palette_width_in_percent
    "#{100.0 / color_palettes.count.to_f}%"
  end
end
