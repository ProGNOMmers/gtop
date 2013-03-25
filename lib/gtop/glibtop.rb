require 'gtop'

module GTop
  class Glibtop < FFI::Struct
    layout :flags,            :uint,
           :method,           :uint,
           :error_method,     :uint,
           :input,           [:int, 2],
           :output,          [:int, 2],
           :socket,           :int,
           :ncpu,             :int,
           :real_ncpu,        :int,
           :os_version_code,  :ulong,
           :name,             :string,
           :server_command,   :string,
           :server_host,      :string,
           :server_user,      :string,
           :server_rsh,       :string,
           :features,         :ulong,
           :server_port,      :ulong,
           :sysdeps,          SystemDependencies,
           :required,         SystemDependencies,
           :pid,              :pid_t
  end
end