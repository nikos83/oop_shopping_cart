# frozen_string_literal: true

require 'pry'

class Product
  def initialize(name, price)
    @name = name
    @price = price
  end
  attr_reader :name, :price
end
