require 'mailgun'
def send_simple_message
  RestClient.post "https://api:key-4on-k92ss983ef89exjj1xss1vkrry18"\
  "@api.mailgun.net/v2/sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org/messages",
  :from => "Mailgun Sandbox <postmaster@sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org>",
  :to => "Julia <tokidokicupcake@gmail.com>",
  :subject => "Hello Julia",
  :text => "Congratulations Julia, you just sent an email with Mailgun!  You are truly awesome!  You can see a record of this email in your logs: https://mailgun.com/cp/log .  You can send up to 300 emails/day from this sandbox server.  Next, you should add your own domain so you can send 10,000 emails/month for free."
end
  