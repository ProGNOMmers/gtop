require 'gtop'

module GTop
  class ProcessSignal < FFI::Struct
    layout :flags,      :guint64,
           :signal,    [:guint64, 2],
           :blocked,   [:guint64, 2],
           :sigignore, [:guint64, 2],
           :sigcatch,  [:guint64, 2]
  end
end