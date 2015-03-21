def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, num = 2)
  return ([word] * num).join(" ")
end

def start_of_word(word, num)
  result = ""
  idx = 0
  while idx < num
    result += word[idx]
    idx += 1
  end
  return result
end

def first_word(word)
  result = ""
  idx = 0
  while word[idx] != " "
    result += word[idx]
    idx += 1
  end
  return result
end

def titleize(string)
  words = string.split
  idx = 0
  while idx < words.length
    word = words[idx]
    if idx == 0
      word[0] = word[0].upcase
    elsif idx == words.length-1
      word[0] = word[0].upcase
    elsif word.length > 4
      word[0] = word[0].upcase
    end
    idx += 1
  end
  return words.join(" ")
end
