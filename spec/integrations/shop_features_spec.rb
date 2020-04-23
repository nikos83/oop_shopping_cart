require 'spec_helper'
require_relative '../../cart'

RSpec.describe "Cart features" do
  let(:shop) { Shop.new }

  describe 'user add a product' do
    # subject { described_class.new }

    it 'adds product to items list' do
      Cart.add_product(shop: shop)
      shop.cart.add_product(1)
      Shop.


      subject.add_product(1)
      expect(subject.products).to eq([1])
    end
  end
end



