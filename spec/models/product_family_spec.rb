require 'spec_helper'

describe ProductFamily do

  let(:product_family) { FactoryGirl.create(:product_family) }
  subject { product_family }

  describe "validations" do
    it { should be_an_instance_of(ProductFamily) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:sample_code) }
    it { should validate_presence_of(:product_category_id) }
    it { should validate_uniqueness_of(:name) }
  end
end
