class TopBooks::Book
  attr_accessor :name, :author, :price, :url
  def self.today
    #return a bunch of instances of books

    #book1 = self.new
    #book1.name = "Hillbilly Elegy: A Memoir of a Family and Culture in Crisis"
    #book1.author = "J.D.Vance"
    #book1.price = "$16.79"
    #book1.url = "https://www.amazon.com/Hillbilly-Elegy-Memoir-Family-Culture/dp/0062300547/ref=zg_bsar_books_1?_encoding=UTF8&psc=1&refRID=WMDKRZY4KMCMM61729XA"

    #book2 = self.new
    #book2.name = "The Whole30: The 30-Day Guide to Total Health and Food Freedom"
    #book2.author = "Melissa Hartwig"
    #book2.price = "$17.99"
    #book2.url = "https://www.amazon.com/Milk-Honey-Rupi-Kaur/dp/144947425X/ref=zg_bsar_books_2?_encoding=UTF8&psc=1&refRID=WMDKRZY4KMCMM61729XA"

    book1 = self.new("1")
    book2 = self.new("2")
    book3 = self.new("3")
    book4 = self.new("4")
    book5 = self.new("5")
    book6 = self.new("6")
    book7 = self.new("7")
    book8 = self.new("8")
    book9 = self.new("9")
    book10 = self.new("10")

    puts "1. #{book1.name} - #{book1.author} - #{book1.price}"
    puts "2. #{book2.name} - #{book2.author} - #{book2.price}"
    puts "3. #{book3.name} - #{book3.author} - #{book3.price}"
    puts "4. #{book4.name} - #{book4.author} - #{book4.price}"
    puts "5. #{book5.name} - #{book5.author} - #{book5.price}"
    puts "6. #{book6.name} - #{book6.author} - #{book6.price}"
    puts "7. #{book7.name} - #{book7.author} - #{book7.price}"
    puts "8. #{book8.name} - #{book8.author} - #{book8.price}"
    puts "9. #{book9.name} - #{book9.author} - #{book9.price}"
    puts "10. #{book10.name} - #{book10.author} - #{book10.price}"
  end

  def initialize(number)
    booknum = TopBooks::Scraper.new(number)
    self.name = booknum.name
    self.author = booknum.author
    self.price = booknum.price
    self.url = booknum.url
  end

end
