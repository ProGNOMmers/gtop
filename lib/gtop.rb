require 'ffi'

module GTop
  extend FFI::Library
  ffi_lib 'libgtop-2.0'

  typedef :uint64, :guint64

  attach_function :cpu,          :glibtop_get_cpu,     [:pointer], :void
  attach_function :memory,       :glibtop_get_mem,     [:pointer], :void
  attach_function :swap,         :glibtop_get_swap,    [:pointer], :void
  attach_function :uptime,       :glibtop_get_uptime,  [:pointer], :void
  attach_function :load_average, :glibtop_get_loadavg, [:pointer], :void
end

require 'gtop/cpu'
require 'gtop/memory'
require 'gtop/swap'
require 'gtop/uptime'
require 'gtop/load_average'

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
end
