class ProductCategory < ActiveRecord::Base  
  has_many :product_families, dependent: :destroy
  has_many :products, through: :product_families, dependent: :destroy
  validates_presence_of :name
  validates_uniqueness_of :name
end
