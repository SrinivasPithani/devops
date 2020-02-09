#Enumerable objects 


def array_with_zero_size(th)
	return true if th.empty?
end

a1 = ["laptop","cup", "pencil", "monitors", "card", "dinosoraus"]
a2 = []
a3 = ["India", "UK" , "Russia"]

[a1, a2, a3].each do |x|
	puts x
end

[a1, a2, a3].each do |arr|
	value = array_with_zero_size(arr)
	if value == true 
		puts arr 
	end
end




