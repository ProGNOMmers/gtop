require 'gtop'

module GTop
  class ProcessArgs < FFI::ManagedStruct
    layout :flags, :guint64,
           :size,  :guint64

    def self.release(pointer)
      # raise NotImplementedError
      GLib.g_free pointer
    end
  end
end