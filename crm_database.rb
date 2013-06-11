require_relative 'crm_contact'
class Database

	attr_accessor :contact, :contacts_array

	def initialize
		@contacts_array = []
	end


	def add(contact)
		@contacts_array << contact
	end

	def modify_contact(selection, attribute, new_value)
		@contacts_array.each do |contact|
  		if (contact.id == selection) || (contact.firstname == selection) || (contact.lastname == selection) || (contact.email == selection) || (contact.notes == selection)
	  	# instance_variables.map(&method(:instance_variable_get))#.any?{ |value| value == selection }
		    contact.send(attribute.to_s + "=", new_value)
		    return contact
		  end
  	end 
  end

  def size
  	return @contacts_array.size
  end
end