require 'spec_helper'

describe ColorFamily do

  let(:color_family) { FactoryGirl.create(:color_family) }

  describe "validations" do
    it "can be instantiated" do
      color_family.should be_an_instance_of(ColorFamily)
    end

    it "is valid" do
      color_family.should be_valid
    end

    it "fails without a name" do
      color_family.name = nil
      color_family.should_not be_valid
    end

    it "is unique" do
      new_color_family = ColorFamily.new(name: color_family.name)
      new_color_family.should_not be_valid
    end
  end
end
