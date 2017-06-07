require 'nokogiri'
require 'open-uri'
class TopSellers::Departments
      attr_accessor :departments, :scrape

      def scrape
        folder = {}
       html = Nokogiri::HTML(open('https://www.amazon.com/Best-Sellers/zgbs/ref=zg_bs_tab'))
            i = 1
            html.css('ul#zg_browseRoot ul li').each do |cat|
              folder[i] = []
              folder[i][0] = cat.text
              folder[i][1] = cat.css("a").attribute("href").value
              i += 1
            end
       @scrape = folder
      end

      def list_departments
        self.scrape
         i = 1
         until i > 37
           puts "#{i}. #{@scrape[i][0]}"
           i += 1
         end
      end

    def initialize
     @departments = self.list_departments
    end

end
