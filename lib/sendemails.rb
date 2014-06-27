require 'mailgun'
require_relative 'timeout_scraper.rb'

class Email
  Mailgun.configure do |config|
    config.api_key = 'key-4on-k92ss983ef89exjj1xss1vkrry18'
    config.domain = 'sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org'
  end


  def send(email)
    @mailgun = Mailgun()

     scraper = ScrapeEvents.new


    parameters = {
      :to => "tokidokicupcake@gmail.com",
      :subject => "Today's Events",
      :text => "I AM SENDING THIS FROM AN APP I MADE IN PROGRAMMING!! :)",
      :from => "postmaster@sandbox6bf4021a7df648069f6dc4f4d18158b4.mailgun.org"
    }
    parameters[:to] = email
    parameters[:text] = []
    Events.create_events
    Events.all.each do |event|
      parameters[:text] << "#{event.event}
#{event.description} 
#{event.location}  
            "
    end

          
      # parameters[:text] = "#{v.event} #{v.location} #{v.description} #{v.image_link}"
    @mailgun.messages.send_email(parameters)
  end
end




