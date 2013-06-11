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


  def test_checking_total_number_of_conntacts_in_data_base
    #new setup . starting with 0 contacts
    db = Database.new
    contact = Contact.new(2,"randomname","rundomsurname","randomemail","randomnote")

    assert_equal 0, @db.size
    db.add contact
    assert_equal 1, @db.size
  end

end