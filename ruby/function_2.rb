def some_method(number)
	number = number + 7	
	puts "Value of a during function call #{number}"
end

a = 20


some_method(a)

puts "Value of a after function call #{a}"
