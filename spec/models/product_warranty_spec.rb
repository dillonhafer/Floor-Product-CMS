require 'spec_helper'

describe ProductWarranty do

  let(:product_warranty) { FactoryGirl.create(:product_warranty) }

  describe "validations" do
    it "can be instantiated" do
      product_warranty.should be_an_instance_of(ProductWarranty)
    end

    it "is valid" do
      product_warranty.valid?.should be_true
    end

    it "fails without a name" do
      product_warranty.name = nil
      product_warranty.valid?.should be_false
    end
  end
end
