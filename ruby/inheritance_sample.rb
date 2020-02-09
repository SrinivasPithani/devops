#!/usr/bin/ruby

class Chef 
	def make_chicken
		puts "make chicken"
	end

	def make_soup
		puts "make soup"
	end
end

class ItalianChef < Chef

end

io = ItalianChef.new
puts io.make_soup
