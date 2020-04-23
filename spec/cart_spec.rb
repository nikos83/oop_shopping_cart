require 'spec_helper'
require_relative '../cart'

RSpec.describe Cart do
  describe '#add_product' do
    subject { described_class.new }

    it 'adds product to items list' do
      subject.add_product(1)
      expect(subject.products).to eq([1])
    end
  end
end



