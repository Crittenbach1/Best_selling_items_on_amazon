class TopBooks::Scraper
     attr_accessor :number, :name, :author, :price, :url


     def initialize(number)
       @number = number
       @name = "scraped_name"
       @author = "scraped_author"
       @price = "scraped_price"
       @url = "scraped_url"
     end


end
