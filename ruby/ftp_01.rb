require 'net/ftp'

ftp = Net::FTP.new(host = "ftp.dlptest.com" , user = "dlpuser@dlptest.com" , password = "fLDScD4Ynth0p4OJ6bW6qCxjh", acct = nil)

puts "Following files available in root directory : "
ftp.list.each do |ftplist|
	puts ftplist
end

