# frozen_string_literal: true

require 'pry'
require_relative 'product'
require_relative 'cart'

class Shop
  def initialize
    @products_in_shop = []
    @cart = Cart.new
    @errors = []
  end

  def add_product_to_shop(product)
    @products_in_shop << product
  end

  def remove_product_from_shop(product)
    if @products_in_shop.include? product
      @products_in_shop.delete(product)
    else
      @errors << 'Product not found'
    end
  end

  def show_products
    @products_in_shop.each do |product|
      p product.name + ' ' + product.price.to_s
    end
  end

  def add_product_to_cart(product)
    if product_in_shop?(product)
      @cart.add_product_to_cart(product)
    else
      @errors << 'This product is not in the shop'
    end
  end

  def product_in_shop?(product)
    @products_in_shop.include? product
  end

  attr_reader :products_in_shop, :cart, :errors
end
# prod1 = Product.new(1, 'First product', 20.20)
# prod2 = Product.new(2, 'Sec product', 20.30)
# prod3 = Product.new(3, 'Wrong', 25.24)
# p = Shop.new
# p.add_product_to_shop(prod1)
# p.add_product_to_shop(prod2)
# p.show_products(p.products_in_shop)
# p.add_product_to_cart(prod2)
# p.add_product_to_cart(prod1)
# p.add_product_to_cart(prod3)
# p.remove_product_from_shop(prod1)
# p 'Just removed product 1'
# p.show_products(p.products_in_shop)
# p 'show cart'
# p.cart.show_products
# puts p.errors
