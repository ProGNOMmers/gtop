require 'spec_helper'

describe Gtop do

  describe '.cpu' do
    it 'works' do
      expect{ Gtop.cpu(Gtop::Cpu.new) }.to_not raise_exception
    end
  end

  describe '.memory' do
    it 'works' do
      expect{ Gtop.memory(Gtop::Memory.new) }.to_not raise_exception
    end
  end

end