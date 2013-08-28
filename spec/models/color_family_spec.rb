require 'spec_helper'

describe ColorFamily do

  let(:color_family) { FactoryGirl.create(:color_family) }
  subject { color_family }

  describe "validations" do
    it { should be_an_instance_of(ColorFamily) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
