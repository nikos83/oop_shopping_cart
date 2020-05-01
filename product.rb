# frozen_string_literal: true

require 'pry'

class Product
  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
  end
  attr_reader :id, :name, :price
end
