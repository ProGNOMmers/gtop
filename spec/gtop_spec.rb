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

  describe '.uptime' do
    it 'works' do
      expect{ described_class.uptime(described_class::Uptime.new) }.to_not raise_exception
    end
  end

  describe '.load_average' do
    it 'works' do
      expect{ described_class.load_average(described_class::LoadAverage.new) }.to_not raise_exception
    end
  end

  describe '.process_state' do
    it 'works' do
      expect{ described_class.process_state(described_class::ProcessState.new, Process.pid) }.to_not raise_exception
    end
  end

  describe '.process_uid' do
    it 'works' do
      expect{ described_class.process_uid(described_class::ProcessUid.new, Process.pid) }.to_not raise_exception
    end
  end

  describe '.process_memory' do
    it 'works' do
      expect{ described_class.process_memory(described_class::ProcessMemory.new, Process.pid) }.to_not raise_exception
    end
  end

  describe '.process_time' do
    it 'works' do
      expect{ described_class.process_time(described_class::ProcessTime.new, Process.pid) }.to_not raise_exception
    end
  end

  describe '.process_signal' do
    it 'works' do
      expect{ described_class.process_signal(described_class::ProcessSignal.new, Process.pid) }.to_not raise_exception
    end
  end
end