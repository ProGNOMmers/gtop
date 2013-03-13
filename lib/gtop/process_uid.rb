require 'gtop'

module GTop
  class ProcessUid < FFI::Struct
    layout :flags,     :guint64,
           :uid,       :uint32,
           :euid,      :uint32,
           :gid,       :uint32,
           :egid,      :uint32,
           :suid,      :uint32,
           :sgid,      :uint32,
           :fsuid,     :uint32,
           :fsgid,     :uint32,
           :pid,       :uint32,
           :ppid,      :uint32,
           :pgrp,      :uint32,
           :session,   :uint32,
           :tty,       :uint32,
           :tpgid,     :uint32,
           :priority,  :uint32,
           :nice,      :uint32,
           :ngroups,   :uint32,
           :groups,   [:uint32, MAX_GROUPS]
  end
end