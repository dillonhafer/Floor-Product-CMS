require 'spec_helper'

describe Product do

  let(:product) { FactoryGirl.create(:product) }

  describe "validations" do
    it "can be instantiated" do
      product.should be_an_instance_of(Product)
    end

    it "is valid" do
      product.valid?.should be_true
    end

    it "fails without a sku" do
      product.sku = nil
      product.valid?.should be_false
    end

    it "fails without a product family" do
      product.product_family_id = nil
      product.valid?.should be_false
    end

    it "fails without a product length" do
      product.product_length_id = nil
      product.valid?.should be_false
    end

    it "product number is unique" do
      new_product = Product.new(sku: product.sku)
      new_product.valid?.should be_false
    end
  end
end
