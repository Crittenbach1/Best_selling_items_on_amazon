class TopBooks::Book
  attr_accessor :name, :author, :price, :url
  def self.today
    #return a bunch of instances of books

    book1 = self.new
    book1.name = "Hillbilly Elegy: A Memoir of a Family and Culture in Crisis"
    book1.author = "J.D.Vance"
    book1.price = "$16.79"
    book1.url = "https://www.amazon.com/Hillbilly-Elegy-Memoir-Family-Culture/dp/0062300547/ref=zg_bsar_books_1?_encoding=UTF8&psc=1&refRID=WMDKRZY4KMCMM61729XA"

    book2 = self.new
    book2.name = "The Whole30: The 30-Day Guide to Total Health and Food Freedom"
    book2.author = "Melissa Hartwig"
    book2.price = "$17.99"
    book2.url = "https://www.amazon.com/Milk-Honey-Rupi-Kaur/dp/144947425X/ref=zg_bsar_books_2?_encoding=UTF8&psc=1&refRID=WMDKRZY4KMCMM61729XA"

    puts "1. #{book1.name} - #{book1.author} - #{book1.price}"
    puts "2. #{book2.name} - #{book2.author} - #{book2.price}"
    puts "3. name - author - price"
    puts "4. name - author - price"
    puts "5. name - author - price"
    puts "6. name - author - price"
    puts "7. name - author - price"
    puts "8. name - author - price"
    puts "9. name - author - price"
    puts "10. name - author - price"
  end

end
