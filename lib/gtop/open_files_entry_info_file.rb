require 'gtop'

module GTop
  class OpenFilesEntryInfoFile < FFI::Struct
    layout :name, [:char, OPEN_FILENAME_LEN+1]
  end
end