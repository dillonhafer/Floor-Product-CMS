class ProductFamily < ActiveRecord::Base
  belongs_to :product_category
  has_many :products, dependent: :destroy
  validates_presence_of :product_category_id, :name, :sample_code
end
