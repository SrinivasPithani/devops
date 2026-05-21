array = ["abc", "def", "ghi", "jkl", "mno"]
#array = ["abc"]

unless array.length < 5
  puts "array is smaller"
else
  puts "array is bigger"
end


i = 0
until i < array.length
	puts i
	i += 1
end

