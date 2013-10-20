require 'gtop'

module GTop
  class SemaphoresLimits < FFI::Struct
    layout :flags,  :guint64,
           :semmap, :guint64,
           :semmni, :guint64,
           :semmns, :guint64,
           :semmnu, :guint64,
           :semmsl, :guint64,
           :semopm, :guint64,
           :semume, :guint64,
           :semusz, :guint64,
           :semvmx, :guint64,
           :semaem, :guint64
  end
end