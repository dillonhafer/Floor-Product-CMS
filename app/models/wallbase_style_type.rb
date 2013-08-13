class WallbaseStyleType < ActiveRecord::Base  
  validates_presence_of :name, :wallbase_collection_id
  belongs_to :wallbase_collection
  has_many :wallbase_profiles, dependent: :destroy

  scope :ordered, order("name")
end
