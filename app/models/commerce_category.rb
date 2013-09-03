class CommerceCategory < ActiveRecord::Base
  self.table_name = "commerce_Categories"
  self.primary_key = "CategoryId"
  
  
  belongs_to :commerce_products, :foreign_key => "CategoryId"
end
