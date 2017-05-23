class TopBooks::CLI

   def call
     puts "Today's Top Books:"
     list_books
     menu
     goodbye
   end

   def list_books
     puts "1. Hillbilly Elegy: A Memoir of a Family and Culture in Crisis - J.D.Vance - $16.79"
     puts "2. Milk and Honey - Rupi Kaur - $8.99"
     puts "3. The Whole30: The 30-Day Guide to Total Health and Food Freedom - Melissa Hartwig - $17.99"
     puts "4. name - author - price"
     puts "5. name - author - price"
     puts "6. name - author - price"
     puts "7. name - author - price"
     puts "8. name - author - price"
     puts "9. name - author - price"
     puts "10. name - author - price"
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
           puts "more info on book 1..."
  
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
