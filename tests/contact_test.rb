require 'test/unit'
 
require_relative '../crm_database'
require_relative '../crm_contact'
 
class TestContact < Test::Unit::TestCase
 
	def setup
		@contact = Contact.new(5, "Will", "Richman", "will@bitmakerlabs.com", "")
 	end

	def test_initialize_with_valid_params_works
	 	# Assert that the variables passed in are retrievable and therefore saved correctly
	   	# Assert that you get back an instance of a contact
	  assert @contact.is_a?(Contact)
		assert_equal 5, @contact.id
	  assert_equal "Will", @contact.first_name
		assert_equal "will@bitmakerlabs.com", @contact.email
		assert_equal "", @contact.notes
	 end
	 
 
  
end