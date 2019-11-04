#parse the dataset based on semi-colon
#1- read the file (ensure close it )
#2- split the words based on ;
#3- Pass them into array
#!/usr/bin/ruby -w

parse = []
#Open & read the file which you want to parse & split on ";"
fo = File.open("semi-colon.dat", "r")
fo.each do |line| # 
	puts line.class
	s =  line.split(";") #split returns an array
	puts s
end
