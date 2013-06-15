require_relative 'html_generator'

if ARGV.empty?
  puts "Usage: ruby router.rb [action]"
else
  action = ARGV[0]
  generator = HtmlGenerator.new
  if action == "index"
    generator.index
  elsif action == "show"
    city = ARGV[1]
    if city.nil?
      puts "Usage: ruby router.rb show [#{HtmlGenerator.locations}]"
    else
      generator.show(city)
    end
  else
    puts "Unknown action #{action}. Use index or show."
  end
end
