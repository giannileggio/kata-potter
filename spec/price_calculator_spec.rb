require_relative '../price_calculator'

RSpec.describe PriceCalculator do
  describe '#total' do
    subject { PriceCalculator.new.total(books) }

    context 'when buying 1 book' do
      let(:books) { [0] }
      it { is_expected.to eq 8 }
    end

    context 'when buying 2 copies of same book' do
      let(:books) { [3, 3] }
      it { is_expected.to eq 16 }
    end
  end
end
