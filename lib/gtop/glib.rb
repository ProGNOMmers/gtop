require 'gtop'

module GTop
  module GLib
    extend FFI::Library
    ffi_lib 'libglib-2.0'

    typedef :pointer, :gpointer

    attach_function :g_free,     [:gpointer], :void
    attach_function :g_strfreev, [:gpointer], :void
  end
end