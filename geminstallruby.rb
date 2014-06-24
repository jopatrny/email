class Email
require 'mailgun'
Mailgun.configure do |config|
  config.api_key = 'key-4on-k92ss983ef89exjj1xss1vkrry18'
  config.domain = 'sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org'
end

def send(email)
  @mailgun = Mailgun()



  parameters = {
    :to => "tokidokicupcake@gmail.com",
    :subject => "THIS IS JULIA",
    :text => "I AM SENDING THIS FROM AN APP I MADE IN PROGRAMMING!! :)",
    :from => "postmaster@sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org"
  }
  parameters[:to] = email
  @mailgun.messages.send_email(parameters)
end
end

hello= Email.new 
hello.send("tokidokicupcake@gmail.com")
