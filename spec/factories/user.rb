FactoryGirl.define do

  sequence :email do |n|
    "test#{n}"
  end

  factory :user do
    email          { FactoryGirl.generate(:email) }
    password       "johnsonite"    
    created_at     Time.zone.local(2000,1,1, 0,0,0)
    updated_at     Time.zone.local(2000,1,1, 0,0,0)
    admin          false
  end
end