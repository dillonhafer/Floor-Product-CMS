require 'spec_helper'

describe Pattern do

  let(:pattern) { FactoryGirl.create(:pattern) }

  describe "validations" do
    it "can be instantiated" do
      pattern.should be_an_instance_of(Pattern)
    end

    it "is valid" do
      pattern.valid?.should be_true
    end

    it "fails without a name" do
      pattern.name = nil
      pattern.valid?.should be_false
    end

    it "is unique" do
      new_pattern = Pattern.new(name: pattern.name)
      new_pattern.valid?.should be_false
    end
  end
end
