require 'spec_helper'

describe ProductLength do

  let(:product_length) { FactoryGirl.create(:product_length) }
  subject { product_length }

  describe "validations" do
    it { should be_an_instance_of(ProductLength) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
