# frozen_string_literal: true

require 'pry'

class Shop
  def initialize
    @products_list = []
  end

  def add_product(product)
    @products_list << product
  end

  attr_reader :products_list
end
