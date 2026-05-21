#!/usr/bin/ruby

bus = Hash.new
bus.default = "h10"
bus = {:number => "h9", :destination => "Harrow"}

puts bus[:number]

