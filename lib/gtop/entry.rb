require 'gtop'

module GTop
  class Entry < FFI::Struct
    layout :labels,       GLib::GPtrArray,
           :values,       :GHashTable,
           :descriptions, :GHashTable
  end
end