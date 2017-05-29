class TopBooks::Book
  attr_accessor :name, :author, :price, :url, :new_scrape
  def self.today
    @new_scrape = TopBooks::AmazonScraper.new.scrape
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

    book1 = self.new("1", @new_scrape)
    book2 = self.new("2", @new_scrape)
    book3 = self.new("3", @new_scrape)
    book4 = self.new("4", @new_scrape)
    book5 = self.new("5", @new_scrape)
    book6 = self.new("6", @new_scrape)
    book7 = self.new("7", @new_scrape)
    book8 = self.new("8", @new_scrape)
    book9 = self.new("9", @new_scrape)
    book10 = self.new("10", @new_scrape)


    puts "1. #{book1.url} - #{book1.author} - #{book1.price}"
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

  def initialize(number, new_scrape)
    booknum = TopBooks::BookScraper.new(number, new_scrape)
    self.name = booknum.hash["name"]
    self.author = booknum.hash["author"]
    self.price = booknum.hash["price"]
    self.url = booknum.hash["url"]
    @@all << self
  end
  
  @@all = []
  
  def self.all
    @@all
  end
  
end
