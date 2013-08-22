require 'spec_helper'

describe ProductLength do

  let(:product_length) { FactoryGirl.create(:product_length) }

  describe "validations" do
    it "can be instantiated" do
      product_length.should be_an_instance_of(ProductLength)
    end

    it "is valid" do
      product_length.valid?.should be_true
    end

    it "fails without a name" do
      product_length.name = nil
      product_length.valid?.should be_false
    end
  end
end
