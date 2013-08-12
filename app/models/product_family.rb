class ProductFamily < ActiveRecord::Base
  belongs_to :product_category
  validates_presence_of :product_category_id, :name, :sample_code
end
