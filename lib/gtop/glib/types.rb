require 'gtop'

module GTop
  module GLib
    module Types
      def self.included(receiver)
        receiver.instance_eval do
          typedef :int,     :gint
          typedef :int64,   :gint64
          typedef :uint8,   :guint8
          typedef :uint16,  :guint16
          typedef :uint32,  :guint32
          typedef :uint64,  :guint64
          typedef :pointer, :gpointer
          typedef :gint,    :gboolean
          typedef :pointer, :GPtrArray
          typedef :pointer, :GHashTable
        end
      end
    end
  end
end