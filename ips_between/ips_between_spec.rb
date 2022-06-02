# frozen_string_literal: true

require 'rspec'
require_relative './ips_between'

describe '#ips_between' do
  subject { ips_between(start, ends) }

  context 'when "10.0.0.0", "10.0.0.50"' do
    let(:start) { '10.0.0.0' }
    let(:ends) { '10.0.0.50' }

    it 'returns 50' do
      expect(subject).to eq(50)
    end
  end

  context 'when "20.0.0.10", "20.0.1.0"' do
    let(:start) { '20.0.0.10' }
    let(:ends) { '20.0.1.0' }

    it 'returns 246' do
      expect(subject).to eq(246)
    end
  end

  context 'when "30.0.0.10", "30.1.2.40"' do
    let(:start) { '30.0.0.10' }
    let(:ends) { '30.1.2.40' }

    it 'returns 808' do
      expect(subject).to eq(798)
    end
  end
end
