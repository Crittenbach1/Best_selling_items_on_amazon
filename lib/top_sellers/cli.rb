
class TopSellers::CLI
  attr_accessor :amazon

   def call
     list_categories
     list_category
   end

   def list_categories
     puts "Amazon Departments:"
     @amazon = TopSellers::Departments.new
   end

   def list_category
      puts "Pick a categoriy number to view Top Sellers or type exit."
   end


end
