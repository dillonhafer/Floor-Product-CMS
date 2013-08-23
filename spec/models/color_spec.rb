require 'spec_helper'

describe Color do

  let(:color) { FactoryGirl.create(:color) }

  describe "validations" do
    it "can be instantiated" do
      color.should be_an_instance_of(Color)
    end

    it "is valid" do
      color.valid?.should be_true
    end

    it "fails without a name" do
      color.name = nil
      color.valid?.should be_false
    end

    it "fails without a color palette" do
      color.color_palette = nil
      color.valid?.should be_false
    end

    it "fails without a color family" do
      color.color_family = nil
      color.valid?.should be_false
    end

    it "fails without a color number" do
      color.color_number = nil
      color.valid?.should be_false
    end

    it "color number is unique" do
      new_color = Color.new(color_number: color.color_number)
      new_color.valid?.should be_false
    end
  end
end
