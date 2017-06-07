
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
      puts "Pick a category number to view Top Sellers or type exit."
      input = ""
      until input == "exit"
        input = gets.strip
        if input.to_i >= 1 && input.to_i <= 37 then
        puts "hello"
        puts "Pick a category number to view Top Sellers or type exit."
        #TopSellers::Department.scrape(input)
        else
        puts "Invalid input - Pick a category number to view Top Sellers or type exit."
        end
     end
   end


end
