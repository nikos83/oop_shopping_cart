require 'pry'

class Cart
  def initialize
    @products = []
  end

  def add_product(item_id)
    @products << item_id
  end

  attr_reader :products
end
