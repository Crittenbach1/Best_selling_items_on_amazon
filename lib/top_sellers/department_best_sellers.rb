require 'nokogiri'
require 'open-uri'
class TopSellers::Department_Best_Sellers
  attr_accessor :all_items

  def initialize

  end

  def self.new_scrape(url)
    new_scrape = self.new
    html = Nokogiri::HTML(open(url))
    all = []
      html.css('div.zg_itemImmersion').each do |item|
            all << item
      end
    @all_items = []
    all.each_with_index do |item, index|
         index = {}
         scrape1 = item.css("div.a-section.a-spacing-none.p13n-asin")
         scrape2 = scrape1.css("a.a-link-normal")
         scrape3 = scrape2.css("div.a-section.a-spacing-mini")

         index["name"] = scrape3.css("img").attribute("alt").value

         scrape4 = scrape1.css("span.p13n-sc-price")
         index["price"] = scrape4.text
         @all_items << index
      end
     @all_items
  end

end
