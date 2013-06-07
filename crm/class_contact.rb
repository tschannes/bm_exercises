class Contact
 
 	attr_accessor :i, :firstname, :lastname, :email, :notes

 	def initialize(i,firstname, lastname, email, notes)
		@i = i
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes
	end	

end