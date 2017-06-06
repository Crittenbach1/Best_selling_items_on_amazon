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
    book11 = self.new("11", @new_scrape)
    book12 = self.new("12", @new_scrape)
    book13 = self.new("13", @new_scrape)
    book14 = self.new("14", @new_scrape)
    book15 = self.new("15", @new_scrape)
    book16 = self.new("16", @new_scrape)
    book17 = self.new("17", @new_scrape)
    book18 = self.new("18", @new_scrape)
    book19 = self.new("19", @new_scrape)
    book20 = self.new("20", @new_scrape)


    puts "1. #{book1.name} - #{book1.price}"
    puts "2. #{book2.name} - #{book2.price}"
    puts "3. #{book3.name} - #{book3.price}"
    puts "4. #{book4.name} - #{book4.price}"
    puts "5. #{book5.name} - #{book5.price}"
    puts "6. #{book6.name} - #{book6.price}"
    puts "7. #{book7.name} - #{book7.price}"
    puts "8. #{book8.name} - #{book8.price}"
    puts "9. #{book9.name} - #{book9.price}"
    puts "10. #{book10.name} - #{book10.price}"
    puts "11. #{book11.name} - #{book11.price}"
    puts "12. #{book12.name} - #{book12.price}"
    puts "13. #{book13.name} - #{book13.price}"
    puts "14. #{book14.name} - #{book14.price}"
    puts "15. #{book15.name} - #{book15.price}"
    puts "16. #{book16.name} - #{book16.price}"
    puts "17. #{book17.name} - #{book17.price}"
    puts "18. #{book18.name} - #{book18.price}"
    puts "19. #{book19.name} - #{book19.price}"
    puts "20. #{book20.name} - #{book20.price}"


  end

  def initialize(number, new_scrape)
    booknum = TopBooks::BookScraper.new(number, new_scrape)
    self.name = booknum.hash["name"]
    self.author = booknum.hash["author"]
    self.price = booknum.hash["price"]
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

end
