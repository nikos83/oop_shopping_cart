# frozen_string_literal: true

require 'spec_helper'
require_relative '../../cart'
require_relative '../../shop'
require_relative '../../product'

RSpec.describe 'Cart features' do
  let(:shop) { Shop.new }
  let(:product) { Product.new('Szkolenie ruby', 100.20) }

  describe 'user add a product' do
    # subject { described_class.new }

    it 'adds product to items list' do
      @add = shop.add_product(product)
      expect(@add).to eq([product])
    end
  end
end
