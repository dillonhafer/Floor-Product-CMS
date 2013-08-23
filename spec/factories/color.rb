FactoryGirl.define do
  factory :color do
    color_palette
    color_family
    color_number   "828"    
    name           "color name"
    created_at     Time.zone.local(2000,1,1, 0,0,0)
    updated_at     Time.zone.local(2000,1,1, 0,0,0)
  end
end