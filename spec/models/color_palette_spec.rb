require 'spec_helper'

describe ColorPalette do

  let(:color_palette) { FactoryGirl.create(:color_palette) }
  subject { color_palette }

  describe "validations" do
    it { should be_an_instance_of(ColorPalette) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:order_number) }
    it { should validate_uniqueness_of(:name) }
  end
end
