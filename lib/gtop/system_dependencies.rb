require 'gtop'

module GTop
  class SystemDependencies < FFI::Struct
    layout :flags,           :guint64,
           :features,        :guint64,
           :cpu,             :guint64,
           :mem,             :guint64,
           :swap,            :guint64,
           :uptime,          :guint64,
           :loadavg,         :guint64,
           :shm_limits,      :guint64,
           :msg_limits,      :guint64,
           :sem_limits,      :guint64,
           :proclist,        :guint64,
           :proc_state,      :guint64,
           :proc_uid,        :guint64,
           :proc_mem,        :guint64,
           :proc_time,       :guint64,
           :proc_signal,     :guint64,
           :proc_kernel,     :guint64,
           :proc_segment,    :guint64,
           :proc_args,       :guint64,
           :proc_map,        :guint64,
           :proc_open_files, :guint64,
           :mountlist,       :guint64,
           :fsusage,         :guint64,
           :netlist,         :guint64,
           :netload,         :guint64,
           :ppp,             :guint64,
           :proc_wd,         :guint64,
           :proc_affinity,   :guint64
  end
end