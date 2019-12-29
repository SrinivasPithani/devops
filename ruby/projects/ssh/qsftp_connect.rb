#!/usr/bin/ruby

require 'net/sftp'
require 'logger'

#username = "Anglo_MKT_SFTP"
#sftp_site = "drop.debeersgroup.com"
#password = "O9J0!R"

def upload(sftp_site, username, password)
	Net::SFTP.start(sftp_site, username, :password => password ) do |sftp|
		logger = Logger.new('example.log')
		logger.info("Upload started")
		sftp.upload!("/home/ruby/devops/ruby/projects/ssh/anglo_log.log", "/Aspect/Logs/anglo_log.log")
		logger.info("Upload completed")
 end
end

upload(sftp_site,username,password)
	

