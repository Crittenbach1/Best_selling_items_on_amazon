class TopBooks::BookScraper

    attr_accessor :scrape, :scrapeHash
    
    def initialize(number, scrape)
      @scrape = scrape[number.to_i - 1]
    end
  
end