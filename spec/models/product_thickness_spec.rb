require 'spec_helper'

describe ProductThickness do

  before(:each) do
    @product_thickness = ProductThickness.new(name: 'name')
  end

  describe "validations" do
    it "can be instantiated" do
      @product_thickness.should be_an_instance_of(ProductThickness)
    end

    it "can be saved successfully" do
      @product_thickness.name = nil
      @product_thickness.save.should be_false
    end

    it "requires a name" do
      @product_thickness.save.should be_true
    end
  end
end
