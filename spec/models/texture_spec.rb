require 'spec_helper'

describe Texture do

  let(:texture) { FactoryGirl.create(:texture) }

  describe "validations" do
    it "can be instantiated" do
      texture.should be_an_instance_of(Texture)
    end

    it "is valid" do
      texture.valid?.should be_true
    end

    it "fails without a name" do
      texture.name = nil
      texture.valid?.should be_false
    end

    it "is unique" do
      new_texture = Texture.new(name: texture.name)
      new_texture.valid?.should be_false
    end
  end
end
