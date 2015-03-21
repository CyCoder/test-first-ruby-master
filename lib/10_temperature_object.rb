class Temperature
  # TODO: your code goes here!
  def initialize(options = {})
   if options.key?(:c)
      @celsius = options[:c]
   elsif options.key?(:f)
     @celsius = Temperature.ftoc(options[:f])
   end
  end

  def self.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end

  def self.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def in_fahrenheit
    Temperature.ctof(@celsius)
  end

  def in_celsius
    @celsius
  end

  private
  def Temperature.ftoc(temp)
    (temp - 32) * (5.0/9.0)
  end

  def Temperature.ctof(temp)
    temp * (9.0/5.0) + 32
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end
