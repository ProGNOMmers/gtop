require 'gtop'

module GTop
  class OpenFilesEntryInfoLocalSocket < FFI::Struct
    layout :localsock, [:char, OPEN_FILENAME_LEN+1]
  end
end