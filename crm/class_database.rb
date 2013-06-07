class Database
	attr_accessor :contacts, :attribute

	def initialize
		@contacts = []
		@attribute = attribute
	end

	def add(i, firstname, lastname, email, notes)
		@contacts << Contact.new(i,firstname,lastname,email,notes)
	end
	
	def display_info_by_attribute(attribute)
		@contacts.each do |contact|
			puts contact.firstname if attribute == "firstname"
			puts contact.lastname if attribute == "lastname"
			puts contact.email if attribute == "email"
			puts contact.notes if attribute == "notes"
		end
	end

	def find_contact(name)
		hits = 0
		@contacts.each do |contact|
			if name == contact.firstname.downcase
				puts ""
				puts contact.i
				@del_contact = contact.i
				puts contact.firstname
				@del_name = contact.firstname
				puts contact.lastname 
				puts contact.email 
				puts contact.notes
				puts ""
				hits +=1	
			end
		end
		puts "Contact not found\n" if hits == 0
		del_ary = [@del_contact, @del_name]
	end

	def modify_contact(contact, type, new_value)
		mod_ary = find_contact(contact) #=>contact to be deleted
		mod_element = @contacts[mod_ary[0].to_i-1000]
		
		case type
			when 1 #firstname
				mod_element.firstname = new_value unless mod_element.firstname.nil?
				puts "#{mod_ary[1]} with id #{mod_ary[0]} has been changed to #{type}: '#{mod_element.firstname}.'"
			when 2 #name
				mod_element.name = new_value unless mod_element.firstname.nil?
				puts "#{mod_ary[1]} with id #{mod_ary[0]} has been changed to #{type}: '#{mod_element.name}.'"
			when 3 #email
				mod_element.email = new_value unless mod_element.firstname.nil?
				puts "#{mod_ary[1]} with id #{mod_ary[0]} has been changed to #{type}: '#{mod_element.email}.'"
			when 4 #remarks
				mod_element.notes = new_value unless mod_element.firstname.nil?
				puts "#{mod_ary[1]} with id #{mod_ary[0]} has been changed to #{type}: '#{mod_element.notes}.'"	
		end
	end

	def display_all_contacts
		@contacts.each do |contact|
			puts "----------------------"
			puts contact.i
			puts contact.firstname
			puts contact.lastname
			puts contact.email
			puts contact.notes
			puts ""
		end
	end

	def delete_contact(delete)
		del_ary_from_find = find_contact(delete)
		@contacts.delete_at(del_ary_from_find[0].to_i-1000)
		puts "#{del_ary_from_find[1]} with ref_num #{del_ary_from_find[0]} was successfully deleted from the database."
		puts ""
	end
end