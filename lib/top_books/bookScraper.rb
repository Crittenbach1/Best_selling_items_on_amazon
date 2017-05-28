class TopBooks::BookScraper

    attr_accessor :scrape, :hash, :item

    def initialize(number, scrape)
      @scrape = scrape[number.to_i - 1].css(".zg_itemWrapper")
      @hash = {}
      self.scraper
    end

    def scraper
    info = @scrape.css("div.a-section.a-spacing-none.p13n-asin")
    url = info.css("a.a-link-normal").attribute("href").value
    @hash["url"] = "www.amazon.com#{url}"
    end



end

#:location => card.css("p.student-location").text,
#:profile_url => card.css("a").attribute("href").value
