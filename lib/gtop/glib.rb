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
    # attach_function :g_ptr_array_index, [GPtrArray, :guint], :pointer
    #define g_ptr_array_index(array,index_) ((array)->pdata)[index_]

    # attach_function :g_ptr_array_foreach, [GPtrArray, GFunc, :gpointer], :void
    # void g_ptr_array_foreach (GPtrArray *array, GFunc func, gpointer user_data);
    # typedef void (*GFunc) (gpointer data, gpointer user_data);

    callback :g_ptr_array_foreach_callback, [:gpointer, :gpointer], :void
    attach_function :g_ptr_array_foreach, [GPtrArray, :g_ptr_array_foreach_callback, :gpointer], :void, blocking: true
    GPtrArrayForeachCallback = FFI::Function.new(:void, [:pointer, :pointer], blocking: true) do |data, user_data|
      # p data, user_data
    end
  end
end