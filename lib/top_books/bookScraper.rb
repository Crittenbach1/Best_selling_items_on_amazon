require 'nokogiri'
require 'open-uri'
class TopBooks::BookScraper

    attr_accessor :scrape, :hash

    def initialize(number, scrape)
      @scrape = scrape[number.to_i - 1].css(".zg_itemWrapper")
      @hash = {}
      self.scraper
    end

    def scraper
      scrape1 = @scrape.css("div.a-section.a-spacing-none.p13n-asin")
      scrape2 = scrape1.css("a.a-link-normal")
      scrape3 = scrape2.css("div.a-section.a-spacing-mini")

      @hash["name"] = scrape3.css("img").attribute("alt").value

      scrape4 = scrape1.css("span.p13n-sc-price")
      @hash["price"] = scrape4.text
    end


end

#:location => card.css("p.student-location").text,
#:profile_url => card.css("a").attribute("href").value
