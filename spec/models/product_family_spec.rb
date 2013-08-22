require 'spec_helper'

describe ProductFamily do

  let(:product_family) { FactoryGirl.create(:product_family) }

  describe "validations" do
    it "can be instantiated" do
      product_family.should be_an_instance_of(ProductFamily)
    end

    it "is valid" do
      product_family.valid?.should be_true
    end

    it "fails without a name" do
      product_family.name = nil
      product_family.valid?.should be_false
    end

    it "fails without a sample code" do
      product_family.sample_code = nil
      product_family.valid?.should be_false
    end

    it "fails without a product category" do
      product_family.product_category_id = nil
      product_family.valid?.should be_false
    end

    it "is unique" do
      new_product_family = ProductFamily.new(name: product_family.name)
      new_product_family.valid?.should be_false
    end
  end
end
