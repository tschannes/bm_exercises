require 'test/unit'
require_relative '../contact.rb'


class ContactTest < Test::Unit::TestCase

	def setup
		@test_contact = Contact.new("1000", "Jack", "Lastname", "email", "some note")
	end

	def test_contact_contains_id_first_name_last_name_email_note
		assert_equal true, @test_contact.respond_to?(:id)
		assert_equal true, @test_contact.respond_to?(:first_name)
		assert_equal true, @test_contact.respond_to?(:last_name)
		assert_equal true, @test_contact.respond_to?(:email)
		assert_equal true, @test_contact.respond_to?(:note)
	end 

	def test_contact
		@test_contact = Contact.new("1000", "Jack", "Lastname", "email", "some note")
		assert_equal true, @test_contact.id == "1000"
		assert_equal true, @test_contact.first_name == "Jack"
	end	


end