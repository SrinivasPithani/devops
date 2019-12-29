#!/usr/bin/ruby

require 'net/sftp'
require 'logger'
require 'net/smtp'
require 'yaml'

if ARGV.length == 0 
	puts "Invalid File Argument. [ Usage : ruby sftp_connect.rb /path/to/confg.yml ]"
else
	username, sftp_site, password, source_file , dest_dir, dest_file , logger = YAML.load(File.read(ARGV[0]))
end

date = `date +%H%M.%d.%m.%Y`.chop
date_pp = `date +"%D %H.%M"`
message = <<MESSAGE_END
From: Aspect <aspect-infrastructure@iongroup.com>
Subject: SFTP upload completd - #{date_pp}
Aspect Prod log has been updated #{date}
Incase of any issues , contact srinivas.pithani@iongroup.com
MESSAGE_END
from = "srinivas.pithani@iongroup.com"
to = "srinivas.pithani@iongroup.com"

def upload(sftp_site, username, password, date, source_file , dest_dir, dest_file, logger )
	Net::SFTP.start(sftp_site, username, :password => password ) do |sftp|
		logger = Logger.new(logger)
		logger.info("Upload started")
		puts dest_file
		dest_file = dest_dir + dest_file + date + ".zip"
		puts dest_file
		sftp.upload!(source_file, dest_file )
		logger.info("File Upload completed at #{date}")
 end
end

def send_mail(message, from, to) 
	Net::SMTP.start('localhost') do |smtp|
  	smtp.send_message message, 'srinivas.pithani@iongroup.com', 'srinivas.pithani@iongroup.com'
 end
end

upload(sftp_site,username,password,date,source_file, dest_dir, dest_file,logger) 
send_mail(message, from, to)
