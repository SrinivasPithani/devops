#!/usr/bin/ruby

require 'csv'

table = CSV.read("data/houseprices.csv")
puts table[1][0]

