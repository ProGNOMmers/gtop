require 'gtop'

module GTop
  class OpenFilesEntryInfo < FFI::Union
    layout :sock,      OpenFilesEntryInfoNetworkSocket,
           :file,      OpenFilesEntryInfoFile,
           :localsock, OpenFilesEntryInfoLocalSocket
  end
end