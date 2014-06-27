require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => "heroku.com",
    :user_name => "postmaster@sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org",
    :password => "98dqwl0842n1",
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end