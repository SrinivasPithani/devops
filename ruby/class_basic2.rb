require 'pry'
class Foo
	def numbers
		puts 123
		strings
	end

#	private 
	def strings
		puts "abcd"
	end
end

fo = Foo.new
fo.numbers
