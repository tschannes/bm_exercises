require 'test/unit'
require_relative '../database.rb'
require_relative '../contact.rb'


class DatabaseTest < Test::Unit::TestCase

	def setup
		@db = Database.new
		@test_contact = Contact.new("1000", "Jack", "Lastname", "email", "some note")
		@test_contact2 = Contact.new("500", "Toni", "Tata", "email", "another note")
	end

	def test_contacts_is_empty_in_the_beginning
		assert_equal nil, @contacts
	end

	def test_db_empty
		assert_equal 0, @db.contacts.length
	end

	def test_db_add_one
		assert_equal 0, @db.contacts.length
		assert_equal 1, @db.add(@test_contact).length
	end

	def test_whether_modify_modifies
		@db.add(@test_contact)
		assert_equal "Jack", @db.contacts[0].first_name
		
		@db.modify("Jack", "Bob")
		
		assert_equal "Bob", @db.contacts[0].first_name
	end

	def test_find_finds_single_contact_using_name_id_or_last_name
		@db.add(@test_contact)
		assert_equal @test_contact, @db.find('1000')
		assert_equal @test_contact, @db.find('Jack')
		assert_equal @test_contact, @db.find('Lastname')
	end

	def test_delete_deletes_contact
		@db.add(@test_contact)
		@db.add(@test_contact2)
		assert_equal 2, @db.contacts.length
		@db.delete('Jack')
		assert_equal 1, @db.contacts.length
	end

	def test

	end



end 