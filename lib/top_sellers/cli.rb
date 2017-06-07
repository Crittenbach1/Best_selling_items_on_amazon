
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

        category = @amazon.scrape[input.to_i][1]
          item_array = TopSellers::Department_Best_Sellers.new_scrape(category)
          puts @amazon.scrape[input.to_i][0]
          puts " "
          TopSellers::BestSeller.print_items(item_array)
          #TopSellers::BestSeller.print_items(item_array)
        puts "Pick a category number to view Top Sellers or type exit."
        else
        puts "Invalid input - Pick a category number to view Top Sellers or type exit."
        end
     end
   end


end
