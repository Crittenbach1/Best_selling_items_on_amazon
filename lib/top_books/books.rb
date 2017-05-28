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


    puts "1. #{book1.name} - #{book1.author} - #{book1.price}"
    puts "2. #{book2.name} - #{book2.author} - #{book2.price}"

  end

  def initialize(number, new_scrape)
    booknum = TopBooks::BookScraper.new(number, new_scrape)
    self.name = booknum.hash["name"]
    self.author = "author"
    self.price = "price"
    self.url = booknum.hash["url"]
  end

end
