require 'gtop'

module GTop
  class NetworkLoad < FFI::Struct
    layout :flags,          :guint64,
           :if_flags,       :guint64,
           :mtu,            :guint32,
           :subnet,         :guint32,
           :address,        :guint32,
           :packets_in,     :guint64,
           :packets_out,    :guint64,
           :packets_total,  :guint64,
           :bytes_in,       :guint64,
           :bytes_out,      :guint64,
           :bytes_total,    :guint64,
           :errors_in,      :guint64,
           :errors_out,     :guint64,
           :errors_total,   :guint64,
           :collisions,     :guint64,
           :address6,      [:guint8, 16],
           :prefix6,       [:guint8, 16],
           :scope6,         :guint8,
           :hwaddress,     [:guint8, 8]
  end
end