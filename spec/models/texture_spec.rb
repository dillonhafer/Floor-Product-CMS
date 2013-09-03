require 'spec_helper'

describe Texture do

  let(:texture) { FactoryGirl.create(:texture) }
  subject { texture }

  describe "validations" do
    it { should be_an_instance_of(Texture) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
