FactoryGirl.define do
  factory :color_palette do
    order_number   1  
    name           "color_palette name"    
    created_at     Time.zone.local(2000,1,1, 0,0,0)
    updated_at     Time.zone.local(2000,1,1, 0,0,0)
  end
end