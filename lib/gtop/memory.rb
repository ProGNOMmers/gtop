require 'gtop'

module GTop
  class Memory < FFI::Struct
    layout :flags,  :guint64,
           :total,  :guint64,
           :used,   :guint64,
           :free,   :guint64,
           :shared, :guint64,
           :buffer, :guint64,
           :cached, :guint64,
           :user,   :guint64,
           :locked, :guint64
  end
end