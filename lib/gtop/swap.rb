require 'gtop'

module GTop
  class Swap < FFI::Struct
    layout :flags,   :guint64,
           :total,   :guint64,
           :used,    :guint64,
           :free,    :guint64,
           :pagein,  :guint64,
           :pageout, :guint64
  end
end