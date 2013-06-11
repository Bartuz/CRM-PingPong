require 'test/unit'
 
require_relative '../crm_contact'
 
class TestContact < Test::Unit::TestCase
 
  def test_initialize_with_valid_params_works
    contact = Contact.new(5, "Will", "Richman", "will@bitmakerlabs.com", "")
    # Assert that the variables passed in are retrievable and therefore saved correctly
    # Assert that you get back an instance of a contact
    assert contact.is_a?(Contact)
    assert_equal 5, contact.id
  end
 
 
  
end