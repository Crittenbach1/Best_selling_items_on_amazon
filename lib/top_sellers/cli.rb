
class TopSellers::CLI

   def call
     list_categories
     puts "Pick a categoriy number to view Top Sellers or type exit."
   end

   def list_categories
     puts "Amazon Departments:"
     TopSellers::Departments.scrape
   end

end
