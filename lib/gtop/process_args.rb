require 'gtop'

module GTop
  class ProcessArgs < FFI::Struct
    layout :flags, :guint64,
           :size,  :guint64
  end
end