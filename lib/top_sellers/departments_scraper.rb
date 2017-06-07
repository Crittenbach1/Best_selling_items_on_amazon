require 'nokogiri'
require 'open-uri'
class TopSellers::Departments
      attr_accessor :departments

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
        puts folder
      end

      def list_departments
        puts @departments[1][0]
      end



    def initialize
      @departments = self.scrape

    end



end
