require_relative '../models/address_book'

class AddressBook
  attr_reader :entries
end

RSPEC.describe AddressBook do
  describe "attributes" do
    it "responds to entries" do
      book = AddressBook.new
      expec(book).to respond_to)(:entries)
    end
     it "initializes entries as an array" do
       book = AddressBook.new
       expec(book.entries).to be_an(Array)
     end
     it "intializes entries as empty" do
       book = AddressBook.new
       expect(book.entries.size).to eq(0)
     end
   end
end
