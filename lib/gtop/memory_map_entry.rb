require 'gtop'
require 'gtop/glib'

module GTop
  class MemoryMapEntry < FFI::ManagedStruct
    layout :flags,     :guint64,
           :start,     :guint64, 
           :end,       :guint64, 
           :offset,    :guint64, 
           :perm,      :guint64, 
           :inode,     :guint64, 
           :device,    :guint64,
           :filename, [:char, MAP_FILENAME_LEN+1]

    def self.release(pointer)
      GLib.g_free(pointer)
    end
  end
end