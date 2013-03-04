require 'gtop'

module GTop
  class LoadAverage < FFI::Struct
layout :flags,       :guint64,
       :loadavg,    [:double, 3],
       :nr_running,  :guint64,
       :nr_tasks,    :guint64,
       :last_pid,    :guint64
  end
end