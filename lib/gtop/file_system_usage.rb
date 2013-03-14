require 'gtop'

module GTop
  class FileSystemUsage < FFI::Struct
    layout :flags,      :guint64,
           :blocks,     :guint64,
           :bfree,      :guint64,
           :bavail,     :guint64,
           :files,      :guint64,
           :ffree,      :guint64,
           :block_size, :guint32,
           :read,       :guint64,
           :write,      :guint64
  end
end