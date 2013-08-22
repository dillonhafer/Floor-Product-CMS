FactoryGirl.define do
  factory :product_family do
    product_category
    name           "family name"    
    sample_code    "87979979879"    
    created_at     Time.zone.local(2000,1,1, 0,0,0)
    updated_at     Time.zone.local(2000,1,1, 0,0,0)
  end
end