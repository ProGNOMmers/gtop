require 'spec_helper'

describe GTop do

  describe '.cpu' do
    it 'works' do
      expect{ described_class.cpu(described_class::Cpu.new) }.to_not raise_exception
    end
  end

  describe '.memory' do
    it 'works' do
      expect{ described_class.memory(described_class::Memory.new) }.to_not raise_exception
    end
  end

  describe '.swap' do
    it 'works' do
      expect{ described_class.swap(described_class::Swap.new) }.to_not raise_exception
    end
  end

end