require 'spec_helper'

describe ColorPalette do

  let(:color_palette) { FactoryGirl.create(:color_palette) }

  describe "validations" do
    it "can be instantiated" do
      color_palette.should be_an_instance_of(ColorPalette)
    end

    it "is valid" do
      color_palette.valid?.should be_true
    end

    it "fails without a name" do
      color_palette.name = nil
      color_palette.valid?.should be_false
    end

    it "fails without an order number" do
      color_palette.order_number = nil
      color_palette.valid?.should be_false
    end

    it "is unique" do
      new_color_palette = ColorPalette.new(name: color_palette.name)
      new_color_palette.valid?.should be_false
    end
  end
end
