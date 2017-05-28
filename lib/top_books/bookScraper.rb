class TopBooks::BookScraper

    attr_accessor :scrape, :hash

    def initialize(number, scrape)
      @scrape = scrape[number.to_i - 1].css(".zg_itemWrapper")
      @hash = {}
      self.scraper
    end

    def scraper
    scrape1 = @scrape.css("div.a-section.a-spacing-none.p13n-asin")
    url = scrape1.css("a.a-link-normal").attribute("href").value

    @hash["url"] = "www.amazon.com#{url}"

    scrape2 = scrape1.css("a.a-link-normal")
    @hash["name"] = scrape2.css("div.p13n-sc-truncate.p13n-sc-truncated-hyphen.p13n-sc-line-clamp-1").text

    scrape3 = scrape1.css("div.a-row.a-size-small")
    @hash["author"] = scrape3.css("a.a-size-small.a-link-child").text

    end



end

#:location => card.css("p.student-location").text,
#:profile_url => card.css("a").attribute("href").value
