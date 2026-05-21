#!/usr/bin/ruby

main, *args = ARGV

puts "do you want to continue: "
resp = "Y"

if args.length <= 2
	puts "insufficent arguments"
else
	puts "good"
end

count = args.length 

case count
when 2 .. 5
	puts "5 args"
when 5 .. 10
	puts "more args"
else
	puts "hefty args"
end

