require 'spec_helper'

describe ProductThickness do

  let(:product_thickness) { FactoryGirl.create(:product_thickness) }

  describe "validations" do
    it "can be instantiated" do
      product_thickness.should be_an_instance_of(ProductThickness)
    end

    it "is valid" do
      product_thickness.valid?.should be_true
    end

    it "fails without a name" do
      product_thickness.name = nil
      product_thickness.valid?.should be_false
    end

    it "is unique" do
      new_product_thickness = ProductThickness.new(name: product_thickness.name)
      new_product_thickness.valid?.should be_false
    end
  end
end
