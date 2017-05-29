require 'net/http'
require 'nokogiri'
require 'open-uri'
class TopBooks::More

   def self.more(url)
      html = Nokogiri::HTML(open('https://www.amazon.com/J.-D.-Vance/e/B01HOE1VZW/ref=dp_byline_cont_pop_book_1'))
      puts "About the Author:"
      puts " "
      puts html.css('body div.a-expander-content.a-expander-partial-collapse-content span').text.strip
      puts " "
   end

end
