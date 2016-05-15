require_relative 'entry.rb'
class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  # adds an entry to entries in name lexicographical order
  def add_entry(entry)
    return entries if !entry || entries.include?(entry)

    if entries.empty?
      entries << entry
    else
      for index in 0...entries.length
        if entry.name < entries[index].name
          entries.insert(index, entry)
        elsif index == entries.length - 1
          entries << entry
        end
      end
    end
    entries
  end
end
