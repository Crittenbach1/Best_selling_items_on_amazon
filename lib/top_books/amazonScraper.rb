require 'nokogiri'
require 'open-uri'

class TopBooks::AmazonScraper
     attr_accessor :scrape

     def initialize
       @scrape = self.scraper
     end

    def scraper
        html = Nokogiri::HTML(open('https://www.amazon.com/gp/bestsellers/2017/books/ref=zg_bs_tab_t_bsar'))

        bestSellers = []

         html.css(".zg_itemImmersion").each do |book|
              bestSellers << book
         end

         return bestSellers
    end

end





#:location => card.css("p.student-location").text,
#:profile_url => card.css("a").attribute("href").value
