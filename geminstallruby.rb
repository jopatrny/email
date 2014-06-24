class Email
require 'mailgun'
Mailgun.configure do |config|
  config.api_key = 'key-4on-k92ss983ef89exjj1xss1vkrry18'
  config.domain = 'sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org'
end

def send
  @mailgun = Mailgun()



  parameters = {
    :to => "tokidokicupcake@gmail.com",
    :subject => "email",
    :text => "this is great.",
    :from => "postmaster@sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org"
  }
  @mailgun.messages.send_email(parameters)
end
end

hello= Email.new 
hello.send
