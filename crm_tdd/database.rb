class Database

	attr_accessor :contacts

	def initialize
		@contacts = []
	end

	def add(contact)
		@contacts << contact
	end

	def find(attribute)
		@contacts.each do |contact|
			if (contact.id == attribute || contact.first_name == attribute || contact.last_name == attribute)
				return contact
			end
		end
	end

	def delete(attribute)
		contact = find(attribute)
		@contacts.delete(contact)
	end

	def modify(attribute, new_value)
		contact = find(attribute)
		contact.instance_variables.each do |var|
			if (contact.instance_variable_get(var) == attribute)
				contact.instance_variable_set(var, new_value)
			end
		end
	end

	

end