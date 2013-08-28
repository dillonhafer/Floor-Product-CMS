require 'spec_helper'

describe Color do

  let(:color) { FactoryGirl.create(:color) }
  subject { color }

  describe "validations" do
    it { should be_an_instance_of(Color) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:color_palette_id) }
    it { should validate_presence_of(:color_family_id) }
    it { should validate_presence_of(:color_number) }
    it { should validate_uniqueness_of(:color_number) }
  end
end
