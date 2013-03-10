require 'gtop'

module GTop
  class ProcessUid < FFI::Struct
    MAX_GROUPS = 64

    layout :flags,     :guint64,
           :uid,       :int,
           :euid,      :int,
           :gid,       :int,
           :egid,      :int,
           :suid,      :int,
           :sgid,      :int,
           :fsuid,     :int,
           :fsgid,     :int,
           :pid,       :int,
           :ppid,      :int,
           :pgrp,      :int,
           :session,   :int,
           :tty,       :int,
           :tpgid,     :int,
           :priority,  :int,
           :nice,      :int,
           :ngroups,   :int,
           :groups,   [:int, MAX_GROUPS]
  end
end