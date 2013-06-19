require 'json'
require 'open-uri'
require_relative 'locations.rb'

class HtmlGenerator

  attr_accessor :stores, :locations

  def initialize
    @@link = Findstore.new.make_link
  end

  def index
    # Retrieve the link with store
    print_header

    puts "<h1>Store with the most alcohol amassed (ml)</h1>"

    # Loop over the products, printing each one
    
    puts "<img src='#{@@link}' alt='Three stores with the most alcohol in Ontario.'>"
    
    
    puts "<footer>"
    puts "  For more info see the <a href='http://lcboapi.com/docs/products'>products API docs</a>."
    puts "</footer>"

    print_footer
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

end

HtmlGenerator.new.index