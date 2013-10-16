require 'gtop'

module GTop
  class ProcessWorkingDirectory < FFI::Struct
    layout :flags,   :guint64,
           :number,  :guint32,
           :root,   [:char, PROCESS_WORKING_DIRECTORY_ROOT_LENGTH+1],
           :exe,    [:char, PROCESS_WORKING_DIRECTORY_EXE_LENGTH+1]
  end
end