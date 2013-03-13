require 'gtop'
require 'gtop/glib'

module GTop
  class MemoryMapEntry < FFI::Struct
    layout :flags,          :guint64,
           :start,          :guint64, 
           :end,            :guint64, 
           :offset,         :guint64, 
           :perm,           :guint64, 
           :inode,          :guint64, 
           :device,         :guint64,
           :size,           :guint64,
           :rss,            :guint64,
           :shared_clean,   :guint64, 
           :shared_dirty,   :guint64,
           :private_clean,  :guint64, 
           :private_dirty,  :guint64,
           :filename,      [:char, MAP_FILENAME_LEN+1]

  end
end