require 'gtop'
require 'gtop/open_files_entry_info'

module GTop
  class OpenFilesEntry < FFI::Struct
    layout :fd,   :int,
           :type, :guint16,
           :info, OpenFilesEntryInfo
  end

end