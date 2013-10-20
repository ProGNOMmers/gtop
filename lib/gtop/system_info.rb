require 'gtop'

module GTop
  class SystemInfo < FFI::Struct
    layout :flags,    :guint64,
           :ncpu,     :guint64,
           :cpuinfo, [Entry, NCPU]
  end
end