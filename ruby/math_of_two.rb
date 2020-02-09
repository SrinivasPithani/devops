puts "Print program does the following : Add, Sub, Mul, Divide"
puts "Enter the operator : sum, sub " 
operator = gets.chomp

case operator
when "sum"
	def sum_of_2(a, b)
		return a + b
	end
when "sub"
	def mul_of_2(a, b)
		return a * b
	end
else
	puts "you dont know maths"
end


print("Enter first number:")
a = gets.chomp

print("Enter second number:")
b = gets.chomp

c = sum_of_2(a.to_i, b.to_i)
d = mul_of_2(a.to_i, b.to_i)

puts "Sum of #{a} and #{b} is : #{c}"

puts "Product of #{a} and #{b} is : #{d}"


