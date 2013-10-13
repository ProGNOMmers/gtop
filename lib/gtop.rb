require 'ffi'

module GTop

  extend FFI::Library

  ffi_lib 'libgtop-2.0'

  typedef :int64,  :gint64
  typedef :uint8,  :guint8
  typedef :uint16, :guint16
  typedef :uint32, :guint32
  typedef :uint64, :guint64
  typedef :ulong,  :uintptr_t

  require 'gtop/constants'
  require 'gtop/glib'
  require 'gtop/system_dependencies'
  require 'gtop/glibtop'
  require 'gtop/cpu'
  require 'gtop/memory'
  require 'gtop/swap'
  require 'gtop/uptime'
  require 'gtop/load_average'
  require 'gtop/shared_memory_limits'
  require 'gtop/process_list'
  require 'gtop/process_state'
  require 'gtop/process_uid'
  require 'gtop/process_memory'
  require 'gtop/process_time'
  require 'gtop/process_signal'
  require 'gtop/process_kernel'
  require 'gtop/process_segment'
  require 'gtop/process_args'
  require 'gtop/process_memory_maps'
  require 'gtop/memory_map_entry'
  require 'gtop/process_open_files'
  require 'gtop/open_files_entry_info_network_socket'
  require 'gtop/open_files_entry_info_file'
  require 'gtop/open_files_entry_info_local_socket'
  require 'gtop/open_files_entry_info'
  require 'gtop/open_files_entry'
  require 'gtop/network_devices_list'
  require 'gtop/network_load'
  require 'gtop/mount_list'
  require 'gtop/mount_entry'
  require 'gtop/file_system_usage'

  attach_function :init_global_server,   :glibtop_init,                [],                           :pointer
  attach_function :close_global_server,  :glibtop_close,               [],                           :void
  attach_function :cpu,                  :glibtop_get_cpu,             [:pointer],                   :void
  attach_function :memory,               :glibtop_get_mem,             [:pointer],                   :void
  attach_function :swap,                 :glibtop_get_swap,            [:pointer],                   :void
  attach_function :uptime,               :glibtop_get_uptime,          [:pointer],                   :void
  attach_function :load_average,         :glibtop_get_loadavg,         [:pointer],                   :void
  attach_function :shared_memory_limits, :glibtop_get_shm_limits,      [:pointer],                   :void
  attach_function :process_list,         :glibtop_get_proclist,        [:pointer, :gint64, :gint64], :uintptr_t
  attach_function :process_state,        :glibtop_get_proc_state,      [:pointer, :pid_t],           :void
  attach_function :process_uid,          :glibtop_get_proc_uid,        [:pointer, :pid_t],           :void
  attach_function :process_memory,       :glibtop_get_proc_mem,        [:pointer, :pid_t],           :void
  attach_function :process_time,         :glibtop_get_proc_time,       [:pointer, :pid_t],           :void
  attach_function :process_signal,       :glibtop_get_proc_signal,     [:pointer, :pid_t],           :void
  attach_function :process_kernel,       :glibtop_get_proc_kernel,     [:pointer, :pid_t],           :void
  attach_function :process_segment,      :glibtop_get_proc_segment,    [:pointer, :pid_t],           :void
  attach_function :process_args,         :glibtop_get_proc_args,       [:pointer, :pid_t, :uint],    :pointer
  attach_function :process_argv,         :glibtop_get_proc_argv,       [:pointer, :pid_t, :uint],    :pointer
  attach_function :process_memory_maps,  :glibtop_get_proc_map,        [:pointer, :pid_t],           :pointer
  attach_function :process_open_files,   :glibtop_get_proc_open_files, [:pointer, :pid_t],           :pointer
  attach_function :network_devices_list, :glibtop_get_netlist,         [:pointer],                   :pointer
  attach_function :network_load,         :glibtop_get_netload,         [:pointer, :string],          :void
  attach_function :mount_list,           :glibtop_get_mountlist,       [:pointer, :pid_t],           :pointer
  attach_function :file_system_usage,    :glibtop_get_fsusage,         [:pointer, :string],          :void
  attach_function :system_dependencies,  :glibtop_get_sysdeps,         [:pointer],                   :void

  # glibtop_get_proc_affinity
  # glibtop_get_proc_wd
  # glibtop_get_sem_limits
  # glibtop_get_sysinfo
  # attach_function :get_parameter,       :glibtop_get_parameter,    [:uint, :pointer, :size_t],   :size_t
  # attach_function :set_parameter,       :glibtop_set_parameter,    [:uint, :pointer, :size_t],   :void
end
