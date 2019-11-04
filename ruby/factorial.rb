#!/usr/bin/ruby

def factorial(n)
	raise "Invalid input from user " if n == 0 || (return 1 if n == 1)
	n * factorial(n-1)
end
puts "Input an integer:"

input = gets.to_i

value = factorial(input)
puts value
