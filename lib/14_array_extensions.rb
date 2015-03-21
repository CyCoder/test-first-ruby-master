class Array
  def sum
    sum = 0
    self.empty? ? sum : self.each { |num| sum += num }
    sum
  end

  def square
    result = []
    self.empty? ? result : self.each { |num| result << num ** 2 }
    result
  end

  def square!
    self.empty? ? [] : self.collect! { |num| num ** 2 }
  end
end
