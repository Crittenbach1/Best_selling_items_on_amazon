
class TopBooks::Scraper
     attr_accessor :number, :name, :author, :price, :url


     def initialize(number)
       @number = number
       @name = "scraped_name"
       @author = "scraped_author"
       @price = "scraped_price"
       @url = "scraped_url"
     end

     def scraper(number)
         html = File.read('https://www.amazon.com/gp/bestsellers/2017/books/ref=zg_bs_tab_t_bsar')
         index = Nokogiri::HTML(html)

          bestSeller = []

         index.css(".zg_rankNumber").each do |num|
           
         end
         bestSeller
       end

end





#:location => card.css("p.student-location").text,
#:profile_url => card.css("a").attribute("href").value
