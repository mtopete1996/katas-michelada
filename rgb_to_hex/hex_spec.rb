require 'rspec'
require_relative './hex'

describe Hex do
  let(:converter) { described_class.new(red, green, blue) }

  describe '#from_rgb' do
    let(:red) { 255 }
    let(:green) { 255 }
    let(:blue) { 255 }

    context 'when parameters are valid' do
      subject { converter.from_rgb }

      it 'returns the correct hex value' do
        expect(subject).to eq('#FFFFFF')
      end
    end

    context 'when a number is greater than 255' do
      let(:blue) { 300 }

      subject { converter.from_rgb }

      it 'takes the number as 255' do
        expect(subject).to eq('#FFFFFF')
      end
    end

    context 'when only zeros' do
      let(:red) { 0 }
      let(:green) { 0 }
      let(:blue) { 0 }

      subject { converter.from_rgb }

      it 'returns 6 zeros' do
        expect(subject).to eq('#000000')
      end
    end

    context 'other random color' do
      let(:red) { 148 }
      let(:green) { 0 }
      let(:blue) { 211 }

      subject { converter.from_rgb }

      it 'returns the correct hex value' do
        expect(subject).to eq('#9400D3')
      end
    end
  end
end
