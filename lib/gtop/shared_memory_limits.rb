require 'gtop'

module GTop
  class SharedMemoryLimits < FFI::Struct
    layout :flags,  :guint64,
           :shmmax, :guint64,
           :shmmin, :guint64,
           :shmmni, :guint64,
           :shmseg, :guint64,
           :shmall, :guint64
  end
end