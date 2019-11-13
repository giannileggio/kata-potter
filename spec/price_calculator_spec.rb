require_relative '../price_calculator'

RSpec.describe PriceCalculator do
    describe '#total' do
        subject(:total) { described_class.new.total(books) }

        context 'when buying 1 book' do
            let(:books) { {first: 1} }

            it { is_expected.to eq 8 }
        end

        context 'when buying 2 of the same book' do
            let(:books) { {first: 2} }

            it { is_expected.to eq 16 }
        end

        context 'when buying 2 different books' do
            let(:books) { {first: 1, second: 1} }

            it { is_expected.to eq 15.2 }
        end

        context 'when buying 3 different books' do
            let(:books) { {first: 1, second: 1, third: 1} }

            it { is_expected.to eq 21.6 }
        end

        context 'when buying 2 of the first, 1 of the second' do
            let(:books) { {first: 2, second: 1} }

            it { is_expected.to eq 23.2 }
        end

        context 'when buying no books' do
            let(:books) { nil }

            it { expect { total }.to raise_error PriceError }
        end

        context 'when buying invalid list of books' do
            let(:books) { {} }

            it { is_expected.to eq 0 }
        end

        context 'when buying an invalid list of books' do
            let(:books) { 'this is a string' }

            it { expect { total }.to raise_error PriceError }
        end
    end
end
 