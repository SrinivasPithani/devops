#!/usr/bin/ruby

dump = Array.new

ARGF.each do |line|
	dump << line.split("=").to_s.chomp.split(",")
end

puts dump




