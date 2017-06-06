
class TopBooks::CLI

   def call
     puts "Today's Top Books:"
     list_categories
     list_books
     menu
     goodbye
   end

   def list_categories
     
   end

   def list_books
     @books = TopBooks::Book.today
     puts @books
   end

   def menu
     input = ""
     while input != "exit"
         puts "Pick number of Amazon category to view current top sellers or type exit."
         input = gets.strip.downcase
         if input == "list"
           list_books
         elsif input.to_i >= 1 && input.to_i <= 37
            puts "#{input} category"
         else
           puts "invalid please type list, exit or a book number"
        end
      end
   end

   def goodbye
     puts "See you tomorrow for tomorrow's top books!!!"
   end


end
