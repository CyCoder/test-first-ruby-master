def reverser
  words = yield.split(" ")
  result = []
  words.each { |word| result << word.reverse }
  result.join(" ")
end

def adder(num = 1)
  yield + num
end

def repeater(num = 1)
  i = 0
  while i < num
    yield
    i += 1
  end
end
