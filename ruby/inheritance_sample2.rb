#!/usr/bin/ruby -w 

class APIConnector
	attr_accessor :title, :description, :url

	def initialize( title: title , description: description, url: url)
		@title = title
		@description = description
		@url = url
	end

	def testme
		puts "Title of this class is #{title} and it is used to #{description} for the #{url}"
	end
end

apio = APIConnector.new(title: "My API class" , description: "Test API", url: "https://myapi.com")
apio.testme


