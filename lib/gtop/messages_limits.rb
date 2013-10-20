require 'gtop'

module GTop
  class MessagesLimits < FFI::Struct
    layout :flags,   :guint64,
           :msgpool, :guint64,
           :msgmap,  :guint64,
           :msgmax,  :guint64,
           :msgmnb,  :guint64,
           :msgmni,  :guint64,
           :msgssz,  :guint64,
           :msgtql,  :guint64
  end
end