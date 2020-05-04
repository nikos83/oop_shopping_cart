# frozen_string_literal: true

require 'spec_helper'
require_relative '../shop'

RSpec.describe Shop do
  let(:shop) { Shop.new }
  let(:product) { Product.new(1, 'Szkolenie ruby', 100.20) }
  let(:product2) { Product.new(2, 'Inne szkolenie', 200.10) }

  describe '#add_product_to_shop' do
    it 'add' do
      shop.add_product_to_shop(product)
      expect(shop.products_in_shop).to include(product)
    end
  end

  describe '#remove_product_from_shop' do
    it 'remove' do
      shop.add_product_to_shop(product)
      shop.remove_product_from_shop(product)
      expect(shop.products_in_shop).to_not include(product)
    end

    it 'error' do
      shop.add_product_to_shop(product)
      shop.remove_product_from_shop(product2)
      expect(shop.errors).to include('Product not found')
    end
  end

  describe '#add_product_to_cart' do
    it 'error' do
      shop.add_product_to_cart(product)
      expect(shop.cart.products_in_cart).to_not include(product)
      expect(shop.errors).to include('This product is not in the shop')
    end

    it 'add id' do
      shop.add_product_to_shop(product)
      shop.add_product_to_cart(product)
      expect(shop.cart.products_in_cart).to include(product.id)
    end
  end
end
