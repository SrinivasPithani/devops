#!/usr/bin/ruby 

require 'httparty'

class RestAPI 
	include HTTParty
	base_uri 'http://jsonplaceholder.typicode.com'

	def get
		self.class.get('/posts')
	end
end

rapi = RestAPI.new
puts rapi.get.class
