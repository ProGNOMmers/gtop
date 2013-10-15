require 'ffi/tools/const_generator'

# Not required; used for test only
module GTop

  private

  def self.generate_constants
    cg = FFI::ConstGenerator.new('libgtop-2.0', cppflags: '-I/usr/include/libgtop-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include') do |gen|
      gen.include 'glibtop.h'
      gen.const(:LIBGTOP_MAJOR_VERSION)
      gen.const(:LIBGTOP_MINOR_VERSION)
      gen.const(:LIBGTOP_MICRO_VERSION)
    end
    puts cg.to_ruby
  end
  
end