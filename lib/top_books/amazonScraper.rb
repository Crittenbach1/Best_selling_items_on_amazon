require 'nokogiri'
require 'open-uri'

class TopBooks::AmazonScraper
     attr_accessor :scrape

     def initialize(url)
       @scrape = self.scraper(url)
     end

    def scraper(url)
        html = Nokogiri::HTML(open(url))

        bestSellers = []

         html.css(".zg_itemImmersion").each do |book|
              bestSellers << book
         end

         return bestSellers
    end

end





#:location => card.css("p.student-location").text,
#:profile_url => card.css("a").attribute("href").value
