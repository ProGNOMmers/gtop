require 'gtop'

module GTop
  class ProcessAffinity < FFI::Struct
    layout :flags,  :guint64,
           :number, :guint32,
           :all,    :gboolean
  end
end