require_relative '../price_calculator'

RSpec.describe PriceCalculator do
  describe '#total' do
    context 'when buying 1 book' do
      it 'returns 8' do
        expect(PriceCalculator.new([0]).total).to eq 8
      end
    end

    # context 'when buying 0 books' do
    #   it 'returns 0' do

    #   end
    # end
  end
end
