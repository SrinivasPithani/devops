#!/usr/bin/ruby

require 'net/http'

uri = Net::HTTP.get('google.com', '/index.html')
puts uri


