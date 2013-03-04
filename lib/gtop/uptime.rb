require 'gtop'

module GTop
  class Uptime < FFI::Struct
    layout :flags,     :guint64,
           :uptime,    :double,
           :idletime,  :double,
           :boot_time, :guint64
  end
end