class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def push(num)
    @stack << num
  end

  def plus
    raise "calculator is empty" unless @stack.size >= 2

    @stack << (@stack.pop + @stack.pop)
  end

  def minus
    raise "calculator is empty" unless @stack.size >= 2

    @stack << (-@stack.pop + @stack.pop)
  end

  def times
    raise "calculator is empty" unless @stack.size >= 2

    @stack << (@stack.pop * @stack.pop)
  end

  def divide
    raise "calculator is empty" unless @stack.size >= 2
    d = @stack.pop
    @stack << (@stack.pop.to_f / d)
  end

  def value
    @stack.last
  end

  def tokens(string)
    string.split.map do |token|
      case token
      when '+'
        :+
      when '-'
        :-
      when '*'
        :*
      when '/'
        :/
      else
        token.to_i
      end
    end
  end
end
