require_relative '../models/entry.rb'

RSpec.describe Entry do
  context "attributes" do
    let(:entry) {entry = Entry.new("Master Panda", "6048089532", "panda@dockwalker.com")}
    it "should respond to name" do
      expect(entry).to respond_to(:name)
    end

    it "should respond to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "should respond to email" do
      expect(entry).to respond_to(:email)
    end

    it "should return the name" do
      expect(entry.name).to eq("Master Panda")
    end
    it "should return the phone number" do
      expect(entry.phone_number).to eq("6048089532")
    end
    it "should return the email" do
      expect(entry.email).to eq("panda@dockwalker.com")
    end
  end
end

RSpec.describe `#to_s` do
  let(:entry) {entry = Entry.new("Master Panda", "6048089532", "panda@dockwalker.com")}
  context "with entry" do
    it "should return a string for entry" do
      expect(entry.to_s).to eq("Master Panda, 6048089532, panda@dockwalker.com\n")

    end
  end
end
