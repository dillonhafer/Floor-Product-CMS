require 'spec_helper'

describe Product do

  let(:product) { FactoryGirl.create(:product) }
  subject { product }

  describe "validations" do
    it { should be_an_instance_of(Product) }
    it { should be_valid }
    it { should validate_presence_of(:product_family_id) }
    it { should validate_presence_of(:product_length_id) }
    it { should validate_presence_of(:product_thickness_id) }
    it { should validate_presence_of(:product_width_id) }
    it { should validate_presence_of(:product_warranty_id) }
    it { should validate_presence_of(:weldrod) }
    it { should validate_presence_of(:sku) }
    it { should validate_presence_of(:color_id) }
    it { should validate_uniqueness_of(:sku) }
  end
end
