#!/usr/bin/ruby

require 'net/ssh'
require 'logger'

#credentials = { "server" => "uk1as34.oilspace.net" , "user" => "test" }
#ssh = Net::SSH.start(credentials["server"] , credentials["user"] , password: "min/avg")
#puts ssh.exec!('uname -a')

log = Logger.new('log.txt')

Net::SSH.start("uk1as34.oilspace.net", "test" , password: "min/avg") do |system|
	puts  system.exec!("uname -a")
	log.debug("This is logged")
end

