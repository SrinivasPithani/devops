require 'IO'

r = IO.popen("irb", "r+")
r.write "puts 123 + 1\n"
3.times { puts r.gets }
r.write "exit\n"
