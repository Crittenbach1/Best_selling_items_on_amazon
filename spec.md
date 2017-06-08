# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
      cli.rb in the top_sellers folder first lists all best seller categories on
      Amazons Best Seller page by calling the list_categories method in cli that
      makes a new Departments object.  It then calls the cli's list_category method.
      This method asks the user for input of the number of the category to see a list
      of the top 20 best selling items in the chosen category.  It does this by taking the
      url from the already scraped departments list and Department_Best_Sellers class uses this
      url to scrape each item on page, putting their info into a hash in an array and creating
      individual objects with a name and price to print out to the cli.
- [x] Pull data from an external source
      The Departments class pulls each name and url from each department on the Best Sellers page.
      The Department_Best_Sellers class pulls the name and price of each best selling item with the
      chosen department url.
- [x] Implement both list and detail views
      The cli begins by giving a list of Depatment to chose from and then gives the details
      of each top selling item of that department.
