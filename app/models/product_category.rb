class ProductCategory < ActiveRecord::Base  
  has_many :product_families
  validates_presence_of :name
end
