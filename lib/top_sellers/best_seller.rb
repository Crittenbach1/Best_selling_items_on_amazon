require 'nokogiri'
require 'open-uri'
class TopSellers::BestSeller
  attr_accessor :name, :price

  @@all = []

  def self.print_items(item_array)

     item_array.each do |item|

          new_item = self.new
          new_item.name = item["name"]
          new_item.price = item["price"]
          @@all << new_item

      end

      @@all.each_with_index do |item, index|
        puts "#{index.to_i + 1}. #{item.name} - #{item.price}"
     end

      @@all = []
  end

  def initialize

  end

end
