require 'gtop'

module GTop
  module GLib
    extend FFI::Library
    ffi_lib 'libglib2.0'

    typedef :pointer, :gpointer

    attach_function :g_free, [:gpointer], :void
  end
end