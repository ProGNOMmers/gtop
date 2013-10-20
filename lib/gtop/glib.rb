require 'gtop'

module GTop
  module GLib
    extend FFI::Library
    ffi_lib 'libglib-2.0'

    require 'gtop/glib/types'
    include Types

    attach_function :g_free,     [:gpointer], :void
    attach_function :g_strfreev, [:gpointer], :void

    require 'gtop/glib/g_ptr_array'
    #define    g_ptr_array_index(array,index_) ((array)->pdata)[index_]
    # attach_function :g_ptr_array_index, [GPtrArray, :guint], :pointer
  end
end