class Product < ActiveRecord::Base
  belongs_to :product_family
  belongs_to :product_category
  belongs_to :product_length
  belongs_to :product_width
  belongs_to :product_thickness
  belongs_to :product_warranty
  belongs_to :color
  
  validates_presence_of :sku,
    :product_family_id,    
    :product_length_id,
    :product_width_id,
    :product_thickness_id,
    :product_warranty_id,
    :color_id

  validates_uniqueness_of :sku

  def length
    product_length.name if product_length
  end

  def width
    product_width.name if product_width
  end

  def thickness
    product_thickness.name if product_thickness
  end

  def warranty
    product_warranty.name if product_warranty
  end
end
