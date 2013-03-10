require 'gtop'

module GTop
  class ProcessKernel < FFI::Struct
    layout :flags,     :guint64,
           :k_flags,   :guint64,
           :min_flt,   :guint64,
           :maj_flt,   :guint64,
           :cmin_flt,  :guint64,
           :cmaj_flt,  :guint64,
           :kstk_esp,  :guint64,
           :kstk_eip,  :guint64,
           :nwchan,    :guint64,
           :wchan,    [:char, 40]
  end
end