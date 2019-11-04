#!/usr/bin/ruby

for i in ARGV
	puts i
end

puts ARGV.length
for i in 0..ARGV.length
	puts "#{i}. #{ARGV[i]}"
end

