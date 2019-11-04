#!/usr/bin/ruby

require 'httparty'

class IPGrabby

	def initialize()
		@url = "http://icanhazip.com"
	end

	def get_my_ip
		response = HTTParty.get(@url)
		response.body.chomp
	end

	def	do_woof
		puts "can you do woof!"
	end

	def some_big_function
		puts "I am complex function"
	end
end

