require 'gtop'

module GTop
  module GLib
    class GPtrArray < FFI::Struct
      layout :pdata, :gpointer,
             :len,   :guint
    end
  end
end