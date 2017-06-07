require 'nokogiri'
require 'open-uri'
class TopSellers::Department_Best_Sellers
  attr_accessor :scrape

  def self.scrape(url)
    category = self.new(url)
    puts "hello #{category.scrape}"
    #html = Nokogiri::HTML(open(url))
    #puts html
  end

  def initialize(url)
     @scrape = url
  end

end
