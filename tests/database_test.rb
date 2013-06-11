require 'test/unit'

require_relative '../crm_database'
require_relative '../crm_contact'

class TestDatabase < Test::Unit::TestCase

  def setup
    #puts ""
    @contact = Contact.new(5, "Will", "Richman", "will@bitmakerlabs.com", "")
    @db = Database.new
    @db.add @contact
  end

  def test_modify_contact_successfully_modifies_lastname
    contact = @db.modify_contact("Will", :lastname, "Schumaker")
    assert_equal "Schumaker", contact.lastname
    assert_equal contact, @db.contacts_array.first
  end

  def test_modify_contact_returns_nil_for_unknown_contact
    # didn't get to this one...
  end

  

end