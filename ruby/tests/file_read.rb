#!/usr/bin/ruby

#read the file & print the count of words

line_count = 0
#File.open("../data/book.txt").each { |lines| line_count += 1 }
File.readlines("../data/book.txt") { |line| puts line }
