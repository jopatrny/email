#call your method that creates all of your Event objects
#create a new instance of your messaging class
#call the method to send your email on that instance of your messaging class
require 'Nokogiri'
require 'open-uri'
require 'timeout_scraper.rb'
require 'sendemails.rb'

task :emailevent do
  Events.new

  mail = Email.new
  mail.send("tokidokicupcake@gmail.com")

end


