require 'spec_helper'

describe Pattern do

  let(:pattern) { FactoryGirl.create(:pattern) }
  subject { pattern }

  describe "validations" do
    it { should be_an_instance_of(Pattern) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
