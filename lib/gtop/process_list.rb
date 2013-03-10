require 'gtop'
require 'gtop/glib'

module GTop
  class ProcessList < FFI::ManagedStruct
    layout :flags,  :guint64,
           :number, :guint64,
           :total,  :guint64,
           :size,   :guint64

    def self.release(pointer)
      # raise NotImplementedError
      GLib.g_free pointer
    end
  end
end