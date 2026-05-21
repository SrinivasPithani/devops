require 'net/smtp'

message = <<MESSAGE_END
From: Srini from laptop <srini@fromsrini.com>
To: Test User <srini@tosrini.com>
Subject: SMTP e-mail test
MIME-Version: 1.0
Content-type: text/html

This is an e-mail message to be sent in HTML format

<b>This is HTML message.</b>
<h1>This is headline.</h1>
This is a test e-mail message.

MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
  smtp.send_message message, 'srini@neonsystem.com', 'srinivas.pithani@iongroup.com', 'spithani@aspectenterprise.com'
end
