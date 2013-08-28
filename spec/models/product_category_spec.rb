require 'spec_helper'

describe ProductCategory do

  let(:product_category) { FactoryGirl.create(:product_category) }
  subject { product_category }

  describe "validations" do
    it { should be_an_instance_of(ProductCategory) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }    
  end
end
