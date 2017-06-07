require 'nokogiri'
require 'open-uri'
class TopSellers::Department_Best_Sellers
  attr_accessor :scrape

  def scrape(url)
    category = self.new(url)
    html = Nokogiri::HTML(open(category.scrape))
    return html
  end

  def initialize(url)
     @scrape = self.scrape
  end

end
