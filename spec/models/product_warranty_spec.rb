require 'spec_helper'

describe ProductWarranty do

  let(:product_warranty) { FactoryGirl.create(:product_warranty) }
  subject { product_warranty }

  describe "validations" do
    it { should be_an_instance_of(ProductWarranty) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
