require 'gtop'

module GTop
  class OpenFilesEntryInfoNetworkSocket < FFI::Struct
    layout :dest_host, [:char, OPEN_DEST_HOST_LEN+1],
           :dest_port,  :int
  end
end