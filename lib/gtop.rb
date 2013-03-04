require 'ffi'

module Gtop
  extend FFI::Library
  ffi_lib 'libgtop-2.0'

  typedef :uint64, :guint64

  attach_function :cpu, :glibtop_get_cpu, [:pointer], :void
end

require 'gtop/cpu'

def reload!
  load __FILE__
end

def test
  a = Gtop::Cpu.new
  Gtop.cpu(a)
  Hash[ a.members.map { |m| [ m, a[m] ] } ]
end
