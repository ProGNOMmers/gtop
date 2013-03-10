require 'gtop'

module GTop
  class ProcessTime < FFI::Struct
    layout :flags,          :guint64,
           :start_time,     :guint64,
           :rtime,          :guint64,
           :utime,          :guint64,
           :stime,          :guint64,
           :cutime,         :guint64,
           :cstime,         :guint64,
           :timeout,        :guint64,
           :it_real_value,  :guint64,
           :frequency,      :guint64,
           :xcpu_utime,    [:guint64, NCPU],
           :xcpu_stime,    [:guint64, NCPU],
           :xcpu_flags,     :guint64
  end
end