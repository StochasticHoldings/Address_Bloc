# entry in our address book
class Entry
  attr_accessor :name, :phone_number, :email

  def initialize(name, phone_number, email)
    @name, @phone_number, @email = name, phone_number, email
  end

  def to_s
    "#{name}, #{phone_number}, #{email}\n"
  end
  
  def ==(other)
    other.instance_of?(self.class) && self.name == other.name
  end
end
