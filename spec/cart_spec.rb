# frozen_string_literal: true

require 'spec_helper'
require_relative '../cart'
require_relative '../product'

RSpec.describe Cart do
  let(:product) { Product.new(3, 'Ror', 300.20) }
  let(:product2) { Product.new(1, 'Adv', 20.22) }
  let(:cart) { Cart.new }

  describe '#add_product_to_cart' do
    it 'add' do
      cart.add_product_to_cart(product)
      expect(cart.products_in_cart).to include(product.id)
    end
  end

  describe '#remove_product_from_cart' do
    it 'remove' do
      cart.add_product_to_cart(product)
      cart.remove_product_from_cart(product)
      expect(cart.products_in_cart).to_not include(product.id)
    end

    it 'add error' do
      cart.remove_product_from_cart(product)
      expect(cart.cart_errors).to include('Item not found in cart')
    end
  end

  describe '#show_products' do
    it 'shows' do
      cart.add_product_to_cart(product)
      cart.add_product_to_cart(product2)
      expect(cart.products_in_cart.size).to eq(2)
      expect(cart.show_products).to include(product.id, product2.id)
    end
  end
end
