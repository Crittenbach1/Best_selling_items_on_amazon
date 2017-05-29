
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
         puts "Enter the number of the book you would like more info on or type list to see the deals again or type exit:"
         input = gets.strip.downcase
         case input
         when "list"
           list_books
         when "1"
           book = TopBooks::Book.all
           url = book[input.to_i - 1].url
           TopBooks::More.more(url)
         when "2"
           puts "more info on book 2..."
         when "3"
           puts "more info on book 3..."
         when "4"
           puts "more info on book 4..."
         when "5"
           puts "more info on book 5..."
         when "6"
           puts "more info on book 6..."
         when "7"
           puts "more info on book 7..."
         when "8"
           puts "more info on book 8..."
         when "9"
           puts "more info on book 9..."
         when "10"
           puts "more info on book 10..."
         else
           puts "invalid please type list, exit or a book number"
        end
      end
   end

   def goodbye
     puts "See you tomorrow for tomorrow's top books!!!"
   end


end
