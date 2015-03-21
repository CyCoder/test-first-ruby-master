class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries, :keywords
  def initialize
    @entries = {}
  end

  def add(add_word)
    if add_word.class == String
      add_word = {add_word => nil}
    end

    add_word.each { |word, meaning| @entries[word] = meaning }
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.key?(word)
  end

  def find(prefix)
    found_entries = entries.select { |word, meaning| word[0...prefix.length] == prefix }
  end

  def printable
    result = ""
    @entries.sort.each { |word, meaning| result += %Q{[#{word}] "#{meaning}"\n} }
    result.chomp
  end
end
