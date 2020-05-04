# frozen_string_literal: true

require 'spec_helper'
require_relative '../../cart'
require_relative '../../shop'
require_relative '../../product'

RSpec.describe 'Cart features' do
  let(:shop) { Shop.new }
  let(:product) { Product.new(1, 'Szkolenie ruby', 100.20) }
  let(:cart) { Cart.new.add_to_cart(product) }

  describe '#show_products' do
    it 'show' do
      shop.add_product_to_shop(product)
      expect(shop.show_products).to include(product)
    end
  end
end
