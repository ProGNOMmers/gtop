require 'gtop'
require 'gtop/glib'

module GTop
  class MountEntry < FFI::Struct
    layout :dev,       :guint64,
           :devname,  [:char, MOUNTENTRY_LEN+1],
           :mountdir, [:char, MOUNTENTRY_LEN+1],
           :type,     [:char, MOUNTENTRY_LEN+1]
  end
end