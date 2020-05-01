# frozen_string_literal: true

require 'pry'

class Cart
  def initialize
    @products_in_cart = []
    @cart_errors = []
  end

  def show_products
    @products_in_cart.each do |product|
      p product
    end
  end

  def add_product_to_cart(product)
    @products_in_cart << product.id
  end

  def remove_product_from_cart(product)
    if @products_in_cart.include? product.id
      @products_in_cart.delete(product.id)
    else
      @cart_errors << 'Item not found in cart'
    end
  end

  attr_accessor :products_in_cart
  attr_reader :cart_errors
end
