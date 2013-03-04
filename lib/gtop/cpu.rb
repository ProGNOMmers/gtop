require 'gtop'

module GTop
  class Cpu < FFI::Struct
    layout :flags,         :guint64,
           :total,         :guint64,
           :user,          :guint64,
           :nice,          :guint64,
           :sys,           :guint64,
           :idle,          :guint64,
           :iowait,        :guint64,
           :irq,           :guint64,
           :softirq,       :guint64,
           :frequency,     :guint64,
           :xcpu_total,   [:guint64, 32],
           :xcpu_user,    [:guint64, 32],
           :xcpu_nice,    [:guint64, 32],
           :xcpu_sys,     [:guint64, 32],
           :xcpu_idle,    [:guint64, 32],
           :xcpu_iowait,  [:guint64, 32],
           :xcpu_irq,     [:guint64, 32],
           :xcpu_softirq, [:guint64, 32],
           :xcpu_flags,    :guint64
  end
end