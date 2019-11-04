#!/usr/bin/ruby

def function(default=100, value=[])
	value.each {|x| puts x }
end

array = [2,3,4,5]
sum = function 2,3,4,5

puts sum
