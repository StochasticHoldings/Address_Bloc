require_relative '../models/entry'
##1
RSpec.describe Entry do
## 2
  describe "attributes" do
    let(:entry) {Entry.new('Joe Shmoe','1-800-cell-number','test@email.com')}
## 3
    it "responds to name" do
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      expect(entry).to  eq(:name)
    end

## 4
    it "responds to phone number" do
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone number" do
      expect(entry).to eq(:phone_number)
    end

     it "responds to email" do
      expect(entry).to respond_to(:email)
    end

    it "reports its" do
      expect(entry).to eq(:email)
    end
  end
  # # 5
    describe "#to_s" do
      it "prints an entry as a string" do
        entry = Entry.new('Joe Shmoe','1-800-cell-number','test@email.com')
        expected_string = "Name: Joe Shmoe\n Phone Number: 1-800-cell-number\n Email: 'test@email.com"
  # # 6
        expect(entry.to_s).to eq(expected_string)
      end
   end
end
