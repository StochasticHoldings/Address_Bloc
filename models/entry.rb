# entry in our address book
class Entry
  attr_accessor :name, :phone_number, :email

  def initialize(name, phone_number, email)
    @name = name
    @phone_number = phone_number
    @email = email
  end

  def ==(other)
  other.instance_of?( self.class ) &&
  name         == other.name &&
  phone_number == other.phone_number &&
  email        == other.email
 end

  def to_s
    "#{name}, #{phone_number}, #{email}\n"
  end
end
