desc 'IRB console'
task :irb do
  $LOAD_PATH << "#{__dir__}/lib"
  require 'gtop'
  require 'irb'
  ARGV.clear
  IRB.start
end