class WallbaseCollection < ActiveRecord::Base
  validates_presence_of :name, :material
  
  has_many :wallbase_style_types, dependent: :destroy
  has_many :wallbase_profiles, through: :wallbase_style_types, dependent: :destroy
  has_many :wallbase_collection_sections, dependent: :destroy
  accepts_nested_attributes_for :wallbase_collection_sections, allow_destroy: true
end
