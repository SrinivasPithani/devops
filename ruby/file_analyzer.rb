#!/usr/bin/ruby

t1 = ''
line_count = 0
#File.open("data/olivier.txt").each {|lines| line_count += 1 }
#File.readlines("data/olivier.txt") { |line| puts line }
File.open("data/book.txt").each do |line|
	line_count += 1
	t1 << line
end
puts "Number of lines using open method : #{line_count}"
puts t1.length
