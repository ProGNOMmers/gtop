require 'spec_helper'

describe GTop do
  describe '.init_global_server' do
    it 'works' do
      expect { described_class::Glibtop.new described_class.init_global_server }.to_not raise_exception
    end
  end

  describe '.close_global_server' do
    it 'works' do
      expect{ described_class.close_global_server }.to_not raise_exception
    end
  end

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

  describe '.process_list' do
    it 'works' do
      expect {
        s = described_class::ProcessList.new
        addr = described_class.process_list(s, described_class::KERN_PROC_ALL, 0)
        ptr = FFI::Pointer.new(:pointer, addr)
        ap = FFI::AutoPointer.new ptr, described_class::GLib.method(:g_free)
        if ap.null?
          nil
        else
          ap.read_array_of_uint(s[:number])
        end
        # Hash[ s.members.map { |m| [ m, s[m] ] } ]
      }.to_not raise_exception
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

  describe '.process_kernel' do
    it 'works' do
      expect{ described_class.process_kernel(described_class::ProcessKernel.new, Process.pid) }.to_not raise_exception
    end
  end

  describe '.process_segment' do
    it 'works' do
      expect{ described_class.process_segment(described_class::ProcessSegment.new, Process.pid) }.to_not raise_exception
    end
  end

  describe '.process_args' do
    it 'works' do
      expect {
        s = described_class::ProcessArgs.new
        addr = described_class.process_args(s, Process.pid, 0)
        ptr = FFI::Pointer.new(:pointer, addr)
        ap = FFI::AutoPointer.new ptr, described_class::GLib.method(:g_free)
        if ap.null?
          nil
        else
          ap.read_string(s[:size]).force_encoding('UTF-8')
        end
        # Hash[ s.members.map { |m| [ m, s[m] ] } ]
      }.to_not raise_exception
    end
  end

  describe '.process_argv' do
    it 'works' do
      expect {
        s = described_class::ProcessArgs.new
        addr = described_class.process_argv(s, Process.pid, 0)
        ptr = FFI::Pointer.new(:pointer, addr)
        ap = FFI::AutoPointer.new ptr, described_class::GLib.method(:g_strfreev)
        if ap.null?
          nil
        else
          ap.get_array_of_string(0).map{ |v| v.force_encoding('UTF-8') }
        end
        # Hash[ s.members.map { |m| [ m, s[m] ] } ]
      }.to_not raise_exception
    end
  end

  describe '.process_memory_maps' do
    it 'works' do
      expect {
        s = described_class::ProcessMemoryMaps.new
        addr = described_class.process_memory_maps(s, Process.pid)

        # p Hash[ s.members.map { |m| [ m, s[m] ] } ]
        ss_pointer = FFI::Pointer.new(described_class::MemoryMapEntry, addr)
        ss_pointer = FFI::AutoPointer.new ss_pointer, described_class::GLib.method(:g_free)
        s[:number].times do |i|
          ssi = described_class::MemoryMapEntry.new(ss_pointer + (i * described_class::MemoryMapEntry.size))
          # p Hash[ ssi.members.map { |m| [ m, ssi[m].is_a?(FFI::StructLayout::CharArray) ? ssi[m].to_s.force_encoding('UTF-8') : ssi[m] ] } ]
        end
      }.to_not raise_exception
    end
  end

  describe '.network_load' do
    it 'works' do
      expect{ described_class.network_load(described_class::NetworkLoad.new, 'wlan0') }.to_not raise_exception
    end
  end

  describe '.process_mount_list' do
    it 'works' do
      expect {
        s = described_class::MountList.new
        addr = described_class.mount_list(s, 1)

        # p Hash[ s.members.map { |m| [ m, s[m] ] } ]
        ss_pointer = FFI::Pointer.new(described_class::MountEntry, addr)
        ss_pointer = FFI::AutoPointer.new ss_pointer, described_class::GLib.method(:g_free)
        s[:number].times do |i|
          ssi = described_class::MountEntry.new(ss_pointer + (i * described_class::MountEntry.size))
          # p Hash[ ssi.members.map { |m| [ m, ssi[m].is_a?(FFI::StructLayout::CharArray) ? ssi[m].to_s.force_encoding('UTF-8') : ssi[m] ] } ]
        end
      }.to_not raise_exception
    end
  end

  describe '.file_system_usage' do
    it 'works' do
      expect{ described_class.file_system_usage(described_class::FileSystemUsage.new, '/') }.to_not raise_exception
    end
  end

  describe '.shared_memory_limits' do
    it 'works' do
      expect{ described_class.shared_memory_limits(described_class::SharedMemoryLimits.new) }.to_not raise_exception
    end
  end

  describe '.network_devices_list' do
    it 'works' do
      expect{ 
        s = described_class::NetworkDevicesList.new
        ptr = described_class.network_devices_list(s)
        ap = FFI::AutoPointer.new ptr, described_class::GLib.method(:g_strfreev)
        # p ap.get_array_of_string(0).map{ |v| v.force_encoding('UTF-8') }
      }.to_not raise_exception
    end
  end

  describe '.process_open_files' do
    it 'works' do
      expect{ 
        s = described_class::ProcessOpenFiles.new
        addr = described_class.process_open_files(s, Process.pid)
        ss_pointer = FFI::Pointer.new(described_class::OpenFilesEntry, addr)
        ss_pointer = FFI::AutoPointer.new ss_pointer, described_class::GLib.method(:g_free)
        s[:number].times do |i|
          ssi = described_class::OpenFilesEntry.new(ss_pointer + (i * described_class::OpenFilesEntry.size))
          # p Hash[ ssi.members.map { |m|
          #   [ m, 
          #     case m
          #     when :info
          #       case ssi[:type]
          #       when described_class::FILE_TYPE_FILE
          #         sss = ssi[:info][:file]
          #         Hash[ sss.members.map { |m| [ m, sss[m].is_a?(FFI::StructLayout::CharArray) ? sss[m].to_s.force_encoding('UTF-8') : sss[m] ] } ]
          #       when described_class::FILE_TYPE_PIPE
          #         'pipe'
          #       when described_class::FILE_TYPE_INETSOCKET, described_class::FILE_TYPE_INET6SOCKET
          #         sss = ssi[:info][:sock]
          #         Hash[ sss.members.map { |m| [ m, sss[m].is_a?(FFI::StructLayout::CharArray) ? sss[m].to_s.force_encoding('UTF-8') : sss[m] ] } ]
          #       when described_class::FILE_TYPE_LOCALSOCKET
          #         sss = ssi[:info][:localsock]
          #         Hash[ sss.members.map { |m| [ m, sss[m].is_a?(FFI::StructLayout::CharArray) ? sss[m].to_s.force_encoding('UTF-8') : sss[m] ] } ]
          #       else
          #         nil
          #       end
          #     else
          #       ssi[m]
          #     end ]
          # } ]
        end
      }.to_not raise_exception
    end
  end
end