require 'spec_helper'

describe ProductWidth do

  let(:product_width) { FactoryGirl.create(:product_width) }

  describe "validations" do
    it "can be instantiated" do
      product_width.should be_an_instance_of(ProductWidth)
    end

    it "is valid" do
      product_width.valid?.should be_true
    end

    it "fails without a name" do
      product_width.name = nil
      product_width.valid?.should be_false
    end

    it "is unique" do
      new_product_width = ProductWidth.new(name: product_width.name)
      new_product_width.valid?.should be_false
    end
  end
end
