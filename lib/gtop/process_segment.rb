require 'gtop'

module GTop
  class ProcessSegment < FFI::Struct
    layout :flags,       :guint64,
           :text_rss,    :guint64,
           :shlib_rss,   :guint64,
           :data_rss,    :guint64,
           :stack_rss,   :guint64,
           :dirty_size,  :guint64,
           :start_code,  :guint64,
           :end_code,    :guint64,
           :start_stack, :guint64
  end
end