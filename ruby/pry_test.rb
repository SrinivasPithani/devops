require 'pry'

class A
	def hello()
	 puts "hello world!"
	end
end

ao = A.new

binding.pry

puts "program resumes here"
