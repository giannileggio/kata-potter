require_relative '../price_calculator'

RSpec.describe PriceCalculator do
  describe '#total' do
    subject { described_class.new(books).total }

    context 'when buying 1 book' do
      let(:books) { [0] }
      it { is_expected.to eq 8 }
    end

    context 'when buying 2 copies of same book' do
      let(:books) { [3, 3] }
      it { is_expected.to eq 16 }
    end

    context 'when buying 2 different books' do
      let(:books) { [0, 1] }
      it { is_expected.to eq 15.2 }
    end

    context 'when parameters is empty array' do
    end
  end

  describe '#discount' do
    subject { described_class.new(books).discount }

    context 'when buying 2 different books' do
      let(:books) { [3, 4] }
      it { is_expected.to eq 0.05 }
    end
  end
end
