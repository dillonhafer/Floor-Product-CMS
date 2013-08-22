require 'spec_helper'

describe ProductCategory do

  let(:product_category) { FactoryGirl.create(:product_category) }

  describe "validations" do
    it "can be instantiated" do
      product_category.should be_an_instance_of(ProductCategory)
    end

    it "is valid" do
      product_category.valid?.should be_true
    end

    it "fails without a name" do
      product_category.name = nil
      product_category.valid?.should be_false
    end

    it "is unique" do
      new_product_category = ProductCategory.new(name: product_category.name)
      new_product_category.valid?.should be_false
    end
  end
end
