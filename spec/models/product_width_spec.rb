require 'spec_helper'

describe ProductWidth do

  let(:product_width) { FactoryGirl.create(:product_width) }
  subject { product_width }

  describe "validations" do
    it { should be_an_instance_of(ProductWidth) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
