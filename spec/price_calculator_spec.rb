require_relative '../price_calculator'

RSpec.describe PriceCalculator do
  describe '#total' do
    context 'when buying 1 book' do
      it 'returns 8' do
        expect(PriceCalculator.new.total([0])).to eq 8
      end
    end
  end
end
