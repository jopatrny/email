require 'nokogiri'
require 'open-uri'
require 'pry'

class ScrapeEvents

  def initialize
      html = open('http://www.timeout.com/newyork/things-to-do/things-to-do-in-new-york-today')
      @timeout = Nokogiri::HTML(html)
  end




  def scrape_data
    all_events = {}
    @timeout.css(".small.row.center").each do |section|
      title = section.children[3].children[1].children[1].children[0].text.strip
      binding.pry
      all_events[title] = {
      :event => section.children[3].children[1].children[1].children[0].text.strip,
      :image_link =>  section.children[1].children[1].children[1].children[1].attributes["data-src"].value,
      :description => section.children[3].children[4].children[0].text,
      :location => section.children[5].children[1].children[1].children[1].children.text,
       #:time => if section.children[5].children[1].children[3] #== nil 
      #           "N/A"
      #         else 
      #           section.children[5].children[1].children[3].children[1].children[0].text 
      #         end
    }
      end
    all_events
  end

end


################

  class Events

    # def initialize
    # end

    def event=(event)
      @event=event
    end

    def image_link=(image_link)
      @image_link=image_link
    end

    def description=(description)
      @description=description
    end

    def location=(location)
      @location=location
    end

    def time=(time)
      @time=time
    end

    def event
      @event
    end

    def image_link
      @image_link
    end

    def description
      @description
    end

    def location
      @location 
    end

    def time
      @time
    end

    def self.all
      ObjectSpace.each_object(self).to_a
    end

    def self.create_events
    instance_of_scraper_class = ScrapeEvents.new
    instance_of_scraper_class.scrape_data.each do |big_hash_key, big_hash_value|
      puts big_hash_key = Events.new
      puts big_hash_key.event = big_hash_value[:event]
      puts big_hash_key.image_link = big_hash_value[:image_link]
      puts big_hash_key.description = big_hash_value[:description]
      puts big_hash_key.location = big_hash_value[:location]
    #puts big_hash_key.time = big_hash_value[:time]
  end
end

end
 



#description to iterate through the description array
#location to iterate through each location
#clean up time to iterate through
#time-- not working for giant tortoise


