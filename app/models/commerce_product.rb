class CommerceProduct < ActiveRecord::Base
  self.table_name = "commerce_Products"
  self.primary_key = "ProductId"
  
  has_many :commerce_product_attributes, :foreign_key => "ProductId"
  has_many :commerce_categories, :foreign_key => "CategoryId"  
end
