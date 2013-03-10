require 'ffi'

module GTop
  extend FFI::Library
  ffi_lib 'libgtop-2.0'

  require 'gtop/glib'

  typedef :int64,  :gint64
  typedef :uint64, :guint64
  typedef :ulong,  :uintptr_t

  # Constants
  #   glibtop_get_proclist which (2nd) argument
  KERN_PROC_ALL     = 0
  KERN_PROC_PID     = 1
  KERN_PROC_PGRP    = 2
  KERN_PROC_SESSION = 3
  KERN_PROC_TTY     = 4
  KERN_PROC_UID     = 5
  KERN_PROC_RUID    = 6
  KERN_PROC_MASK    = 15
  EXCLUDE_IDLE      = 0x1000
  EXCLUDE_SYSTEM    = 0x2000
  EXCLUDE_NOTTY     = 0x4000

  attach_function :cpu,          :glibtop_get_cpu,      [:pointer], :void
  attach_function :memory,       :glibtop_get_mem,      [:pointer], :void
  attach_function :swap,         :glibtop_get_swap,     [:pointer], :void
  attach_function :uptime,       :glibtop_get_uptime,   [:pointer], :void
  attach_function :load_average, :glibtop_get_loadavg,  [:pointer], :void
  attach_function :process_list, :glibtop_get_proclist, [:pointer, :gint64, :gint64], :uintptr_t
end

require 'gtop/cpu'
require 'gtop/memory'
require 'gtop/swap'
require 'gtop/uptime'
require 'gtop/load_average'
require 'gtop/process_list'

def reload!
  load __FILE__
end

def test
  # a = Gtop::Cpu.new
  # Gtop.cpu(a)
  # Hash[ a.members.map { |m| [ m, a[m] ] } ]

  # a = Gtop::Memory.new
  # Gtop.memory(a)
  # Hash[ a.members.map { |m| [ m, a[m] ] } ]

  a = Gtop::ProcessList.new
  Gtop.process_list(a)
  Hash[ a.members.map { |m| [ m, a[m] ] } ]
end
