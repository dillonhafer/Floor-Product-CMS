require 'spec_helper'

describe ProductThickness do

  let(:product_thickness) { FactoryGirl.create(:product_thickness) }
  subject { product_thickness }

  describe "validations" do
    it { should be_an_instance_of(ProductThickness) }
    it { should be_valid }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
