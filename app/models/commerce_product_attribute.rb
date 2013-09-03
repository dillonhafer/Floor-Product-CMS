class CommerceProductAttribute < ActiveRecord::Base  
  self.table_name = "commerce_ProductAttributes"
  self.primary_key = "ProductId"
  belongs_to :commerce_products, :foreign_key => "ProductId"

  def name
    self.ProductAttributeName
  end

  def value
    self.ProductAttributeValue
  end

  def self.foo    
    Product.all.each do |p|      
      tmp_p = CommerceProduct.where(Sku: p.sku).first
      attrib = tmp_p.commerce_product_attributes.where(ProductAttributeName: 'weldrod').first
      if attrib        
        puts "#{p.sku} matches #{tmp_p.Sku} and should have welrod of: " + attrib.value + "\n"
        p.update_attributes(weldrod: attrib.value)
      else
        puts "No match found for: #{p.sku}\n"
        p.update_attributes(weldrod: 'NA')
      end
    end
  end
end
