
class TopBooks::CLI

   def call
     puts "Today's Top Books:"
     list_books
     menu
     goodbye
   end

   def list_books
     @books = TopBooks::Book.today
     puts @books
   end

   def menu
     input = ""
     while input != "exit"
         puts "Enter the year (1995 - 2017) to see top selling books, type list to see current books again or type exit:"
         input = gets.strip.downcase
         if input == "list"
           list_books
         elsif input.to_i >= 1995 && input.to_i <= 2017
           url = TopBooks::Years.years(input)
             
           TopBooks::More.more(url)
         else
           puts "invalid please type list, exit or a book number"
        end
      end
   end

   def goodbye
     puts "See you tomorrow for tomorrow's top books!!!"
   end


end
