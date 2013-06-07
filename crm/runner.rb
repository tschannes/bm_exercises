require_relative 'Class_Contact'
require_relative 'Class_Database'

class Runner

	def self.run
		db = Database.new
		db.add("998", "Hannes", "Tscherrig", "tschannes@gmx.ch", "nothing to add" )
		db.add("997", "Petra", "Hermann", "petra@tscherrig.net", "sister")
		i = 1000
	
		while true		
			puts "To enter contact, type 'add'"
			puts "To modify and existing contact, type 'mod'"
			puts "To display all existing contacts, type 'all'"
			puts "To display a particular contact, enter 'one'"
			puts "To display a particular user's attribute, 'sort'"
			puts "To delete a contact type in 'del'"
			puts "To exit, type 'exit'"
			menu_command = gets.chomp.downcase  
			puts menu_command #\b
			puts "\e[H\e[2J"

			if menu_command=='exit'
				break
			elsif menu_command == 'add'
				puts "Please enter you first name"
			   	firstname = gets.chomp.downcase
			   	puts "\e[H\e[2J"
				
				puts "Please enter your last name"
				lastname = gets.chomp.downcase
				puts "\e[H\e[2J"
				
				puts "Please enter your email"
				email = gets.chomp.downcase
				puts "\e[H\e[2J"
				
				puts "Please enter any additional information"
				notes = gets.chomp.downcase
				puts "\e[H\e[2J"
				db.add(i,firstname, lastname, email, notes)
				i += 1
			elsif menu_command == 'mod'
				puts "Which contact would you like to modify? Type a firstname!"
				contact = gets.chomp.downcase
				puts "Which piece of info would you like to modify? Choose between firstname(1), name(2), email(3), and remarks(4)!"
				type = gets.chomp.to_i
				next unless (1..4).include?(type)
				puts "What is the new value?"
				new_value = gets.chomp
				db.modify_contact(contact, type, new_value)
			elsif menu_command == 'all'
				puts "Show all contacts? Enter 'all'!"
				all = gets.chomp.downcase
				db.display_all_contacts
			elsif menu_command == 'one'
				puts "Please enter first name or email of contact you wish to display"
				name = gets.chomp.downcase
				db.find_contact(name)
			elsif menu_command == 'sort'
				puts "Which attribute would you like displayed?"
				puts "Options: firstname, lastname, email, notes"
				attribute = gets.chomp.downcase
				db.display_info_by_attribute(attribute)
			elsif menu_command == 'del'
				puts "Which contact would you like to delete?"
				delete = gets.chomp.downcase
				db.delete_contact(delete)
			else
				puts "Invalid command. Please enter a command from the menu."
			end
		end
	end
end
Runner.run