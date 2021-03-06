FactoryGirl.define do
  factory :product do
    product_family
    product_length
    product_width
    product_thickness
    product_warranty
    color
    sku            "wg-xx-dd"
    weldrod        '123456789'
    created_at     Time.zone.local(2000,1,1, 0,0,0)
    updated_at     Time.zone.local(2000,1,1, 0,0,0)
  end
end
