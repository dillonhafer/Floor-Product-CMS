FactoryGirl.define do
  factory :product_warranty do    
    name           "warranty name"    
    created_at     Time.zone.local(2000,1,1, 0,0,0)
    updated_at     Time.zone.local(2000,1,1, 0,0,0)
  end
end