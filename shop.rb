# frozen_string_literal: true

require 'pry'
require_relative 'product'
require_relative 'cart'

class Shop
  attr_reader :products_in_shop, :cart, :errors

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
end
