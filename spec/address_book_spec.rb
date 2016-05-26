require_relative '../models/address_book.rb'

RSpec.describe AddressBook do
  context 'attributes' do
    let(:book) {book = AddressBook.new}

    it "should respond to entries" do
      expect(book).to respond_to(:entries)
    end
  end

  context 'initialized Address book' do
    let(:book) {book = AddressBook.new}

    it "entries should be an array" do
      expect(book.entries.class).to eq(Array)
    end

    it "entries should be empty" do
      expect(book.entries.empty?).to eq(true)
    end
  end
end

RSpec.describe AddressBook do
  context '#add_entry' do
    let(:book) {AddressBook.new}
    let(:entry) {Entry.new("colby", "555-555-1212", "email@gmail.com")}
    let (:entry1) {Entry.new("a", "555-1212", "email")}
    let (:entry2) {Entry.new("b", "555-1212", "email")}
    let (:entry3) {Entry.new("c", "555-1212", "email")}

    it "should add an entry" do
      book.add_entry("a", "555-1212", "email")
      # expect(book.entries).to include(entry1)
    end

    it "should not accept duplicates" do
      book.add_entry("colby", "555-555-1212", "email@gmail.com")
      book.add_entry("colby", "555-555-1212", "email@gmail.com")
      expect(book.entries.count(entry1)).to eq(1)
    end

    it "should be in alphabetical order" do
      book.add_entry("c", "555-1212", "email")
      book.add_entry("b", "555-1212", "email")
      book.add_entry("a", "555-1212", "email")
      expect(book.entries.index("b", "555-1212", "email")).to eq(1)
    end
  end
end
