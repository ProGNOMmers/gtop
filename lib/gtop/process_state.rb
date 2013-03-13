require 'gtop'

module GTop
  class ProcessState < FFI::Struct
    layout :flags,           :guint64,
           :cmd,            [:char, 40],
           :state,           :uint,
           :uid,             :int,
           :gid,             :int,
           :ruid,            :int,
           :rgid,            :int,
           :has_cpu,         :int,
           :processor,       :int,
           :last_processor,  :int
  end
end