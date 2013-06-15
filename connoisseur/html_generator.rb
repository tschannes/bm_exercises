require 'json'
require 'open-uri'

class HtmlGenerator

  attr_accessor :stores, :locations

  def initialize
    @@stores = self.locations
  end

  def index
    # Retrieve the list of products
    stores = retrieve_data

    print_header

    puts "<h1>All Cities</h1>"

    # Loop over the products, printing each one
    stores.each do |store|
      puts "<div class='product'>"
      puts "  <h2>LCBO #{store["city"]}</h2>"
      puts "  <ul class='product-data'>"
      puts "    <li>id: #{store["address_line_1"]}</li>"
      puts "    <li>#{store["address_line_2"]}</li>"
      puts "    <li>#{store["city"]}</li>"
      puts "    <li>#{store["postal_code"]}</li>"
      puts "  </ul>"
      puts "</div>"
    end
    
    puts "<footer>"
    puts "  For more info see the <a href='http://lcboapi.com/docs/products'>products API docs</a>."
    puts "</footer>"

    print_footer
  end

  def show(city)
    # Retrieve the specified product
    product = retrieve_data
    stores.each do |store|
    print_header
      puts "<div class='product'>"
      puts "  <h2>LCBO #{store["city"]}</h2>"
      puts "  <ul class='product-data'>"
        puts "    <li>id: #{store["address_line_1"]}</li>"
        puts "    <li>#{store["address_line_2"]}</li>"
        puts "    <li>#{store["city"]}</li>"
        puts "    <li>#{store["postal_code"]}</li>"
      puts "  </ul>"
      puts "</div>"
      print_footer
    end
  end

  def print_header
    puts "<html>"
    puts "  <head>"
    puts "    <title>Connoisseur</title>"
    puts "    <link rel='stylesheet' href='normalize.css' type='text/css'>"
    puts "    <link rel='stylesheet' href='styles.css' type='text/css'>"
    puts "  </head>"
    puts "  <body>"
  end

  def print_footer
    puts "  </body>"
    puts "</html>"
  end

  def retrieve_data
    url = "http://lcboapi.com/stores"
    raw = open(url).read

    parsed = JSON.parse(raw)

    @@stores = parsed["result"]

  end

  def self.locations
      toni = @@stores.each do |store|
        toni << store["city"]
      end
      toni = locations.join(", ")
  end


end