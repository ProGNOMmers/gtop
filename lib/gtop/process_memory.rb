require 'gtop'

module GTop
  class ProcessMemory < FFI::Struct
    layout :flags,    :guint64,
           :size,     :guint64,
           :vsize,    :guint64,
           :resident, :guint64,
           :share,    :guint64,
           :rss,      :guint64,
           :rss_rlim, :guint64
  end
end