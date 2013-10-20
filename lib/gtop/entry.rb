require 'gtop'

module GTop
  class Entry < FFI::Struct
    layout :labels,       :GPtrArray,
           :values,       :GHashTable,
           :descriptions, :GHashTable
  end
end