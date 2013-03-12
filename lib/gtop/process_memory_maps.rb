require 'gtop'
require 'gtop/glib'

module GTop
  class ProcessMemoryMaps < FFI::Struct
    layout :flags,  :guint64,
           :number, :guint64,
           :total,  :guint64,
           :size,   :guint64
  end
end