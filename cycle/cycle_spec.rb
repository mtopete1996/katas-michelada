# frozen_string_literal: true

require 'debug'
require 'rspec'

require_relative './cycle'

describe 'cycle' do
  subject { cycle(num) }

  context 'when num = 5' do
    let(:num) { 5 }

    it 'returns -1' do
      expect(subject).to eq(-1)
    end
  end

  context 'when num = 13' do
    let(:num) { 13 }

    it 'returns 6' do
      expect(subject).to eq(6)
    end
  end

  context 'when num = 21' do
    let(:num) { 21 }

    it 'returns 6' do
      expect(subject).to eq(6)
    end
  end

  context 'when num = 27' do
    let(:num) { 27 }

    it 'returns 3' do
      expect(subject).to eq(3)
    end
  end

  context 'when num = 33' do
    let(:num) { 33 }

    it 'returns 2' do
      expect(subject).to eq(2)
    end
  end

  context 'when num = 37' do
    let(:num) { 37 }

    it 'returns 3' do
      expect(subject).to eq(3)
    end
  end

  context 'when num = 94' do
    let(:num) { 94 }

    it 'returns -1' do
      expect(subject).to eq(-1)
    end
  end

  context 'when num = 22' do
    let(:num) { 22 }

    it 'returns -1' do
      expect(subject).to eq(-1)
    end
  end
end
