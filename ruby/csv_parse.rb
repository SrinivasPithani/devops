#!/usr/bin/ruby

require 'csv'

table = CSV.read("data/houseprices.txt")
puts table[1][0]

