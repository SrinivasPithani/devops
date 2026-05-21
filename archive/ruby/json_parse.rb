#!/usr/bin/ruby
require 'json'

fo = File.read('data/product.json')

jo = JSON.parse(fo)

puts jo["Products"][0]["Product name"]
