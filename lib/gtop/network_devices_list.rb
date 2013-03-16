require 'gtop'

module GTop
  class NetworkDevicesList < FFI::Struct
    layout :flags,  :guint64,
           :number, :guint32
  end
end