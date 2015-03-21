ONES = {
  0 => "zero",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine"
}

TEENS = {
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
}

TENS = {
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
}

HUGE_NUMS = {
  100 => "hundred",
  1000 => "thousand",
  1_000_000 => "million",
  1_000_000_000 => "billion",
  1_000_000_000_000 => "trillion"
}


module InWords
  def in_words
    if self < 10
      ONES[self]
    elsif self < 20
      TEENS[self]
    elsif self < 100
      if self % 10 != 0
        tens = (self / 10) * 10
        leftover = self % 10
        "#{TENS[tens]} #{ONES[leftover]}"
      else
        TENS[self]
      end
    else
      if self < HUGE_NUMS.key("thousand")
        find_huge_numbers(HUGE_NUMS.key("hundred"))
      elsif self < HUGE_NUMS.key("million")
        find_huge_numbers(HUGE_NUMS.key("thousand"))
      elsif self < HUGE_NUMS.key("billion")
        find_huge_numbers(HUGE_NUMS.key("million"))
      elsif self < HUGE_NUMS.key("trillion")
        find_huge_numbers(HUGE_NUMS.key("billion"))
      else
        find_huge_numbers(HUGE_NUMS.key("trillion"))
      end
    end
  end

  def find_huge_numbers(num)
    if (self % num == 0)
      first_digit = (self / num).in_words
      leftover = num
      "#{first_digit} #{HUGE_NUMS[leftover]}"
    else
      first_digit = (self / num).in_words
      leftover = (self % num).in_words
      "#{first_digit} #{HUGE_NUMS[num]} #{leftover}"
    end
  end
end

class Fixnum
  include InWords
end

class Bignum
  include InWords
end
