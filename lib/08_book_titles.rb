class Book
  # TODO: your code goes here!
  def title=(t)
    @title = Book.capitalize_titles(t)
  end

  def title
    @title
  end

private
  def self.capitalize_titles(string)
    articles = ['the', 'a', 'an', 'and', 'or', 'in', 'of']
    words = string.split
    idx = 0

    while idx < words.length
      word = words[idx]
      if idx == 0
        word[0] = word[0].upcase
      elsif articles.include?(word)
        word
      elsif idx == words.length-1
        word[0] = word[0].upcase
      elsif word == 'i'
        word[0] = word[0].upcase
      else
        word[0] = word[0].upcase
      end

      idx += 1
    end
    return words.join(" ")
  end
end
