VOWELS = ['a','e','i','o','u']

def is_vowels(letter)
  VOWELS.include?(letter)
end

def translate(string)
  words = string.split(" ")
  word_has_capital = false
  idx = 0
  while idx < words.length
    word = words[idx]

    if word[0] == word[0].upcase
      word_has_capital = true
      word[0] = word[0].downcase!
    end

    if is_vowels(word[0])
      word << 'ay'
    elsif word[0..1] == 'qu'
      word << 'quay'
      word.slice!(word[0..1])
    elsif word[1..2] == 'qu'
      word << word[0] + 'quay'
      word.slice!(word[0..2])
    elsif !is_vowels(word[0]) && !is_vowels(word[1]) && !is_vowels(word[2])
      word << word[0] + word[1] + word[2] + 'ay'
      word.slice!(word[0..2])
      if word_has_capital
        word[0] = word[0].upcase
      end
    elsif !is_vowels(word[0]) && !is_vowels(word[1])
      word << word[0] + word[1] + 'ay'
      word.slice!(word[0..1])
      if word_has_capital
        word[0] = word[0].upcase
      end
    elsif !is_vowels(word[0])
      word << word[0] + 'ay'
      word.slice!(word[0])
      if word_has_capital
        word[0] = word[0].upcase
      end
    end
    idx += 1
  end

  words.join(" ")
end
