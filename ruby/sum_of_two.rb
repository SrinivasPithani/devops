def sum_of_2(a, b)
	return a + b
end

def mul_of_2(a, b)
	return a * b
end

print("Enter first number:")
a = gets.chomp

print("Enter second number:")
b = gets.chomp

c = sum_of_2(a.to_i, b.to_i)
d = mul_of_2(a.to_i, b.to_i)

puts "Sum of #{a} and #{b} is : #{c}"

puts "Product of #{a} and #{b} is : #{d}"


