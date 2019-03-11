require_relative '../price_calculator'

RSpec.describe PriceCalculator do
  describe '#total' do
    subject { described_class.new(books).total }

    context 'when buying 1 book' do
      let(:books) { [0] }
      it 'returns 8' do
        is_expected.to eq 8
      end
    end

    context 'when buying 0 books' do
      it 'returns 0' do
        expect(described_class.new.total).to eq 0
      end
    end

    context 'when buying 2 of the same book' do
      let(:books) { [1, 1] }
      it 'returns 16' do
        is_expected.to eq 16
      end
    end

    context 'when buying 2 different books' do
      let(:books) { [1, 2] }
      it 'returns 16' do
        is_expected.to eq 15.2
      end
    end

    context 'when buying 3 different books' do
      let(:books) { [1, 2, 3] }
      it 'returns 16' do
        is_expected.to eq 21.6
      end
    end

    context 'when not passing an array'
  end
end
