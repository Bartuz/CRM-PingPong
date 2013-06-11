require_relative 'helper_test'

class TestDatabase < Test::Unit::TestCase

  def setup
    #puts ""
    @contact = Contact.new(5, "Will", "Richman", "will@bitmakerlabs.com", "")
    @db = Database.new
    @db.add @contact
  end

  def test_modify_contact_successfully_modifies_lastname
    contact = @db.modify_contact("Will", :lastname, "Schumaker")
    assert_equal "Schumaker", @contact.lastname
    assert_equal contact, @db.contacts_array.first
  end

  def test_modify_contact_returns_nil_for_unknown_contact
    contact = @db.modify_contact("Jared", :firstname, "Filip")
    assert_equal nil, contact
  end

  

end