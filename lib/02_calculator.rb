def add(first,second)
  first + second
end

def subtract(first,second)
  first - second
end

def sum(num)
  if num.length <= 0
    return 0
  elsif num.length == 1
    return num[0]
  else
    idx = 0
    sum = 0
    while idx < num.length
      sum += num[idx]
      idx += 1
    end
    return sum
  end
end

# Extra Credit Test-Driving Bonus:

def multiply(num)
  if num.length <= 0
    return 0
  elsif num.length == 1
    return num[0]
  else
    idx = 0
    result = 1
    while idx < num.length
      result *= num[idx]
      idx += 1
    end
    return result
  end
end

def power(base,exp)
  if (base == 0) || (base == 1) || (exp == 0)
    return 1
  elsif exp == 1
    return base
  else
    result = 1
    while exp > 1
      result = base * base
      exp -= 1
    end
    return result
  end
end

def factorial(num)
  if num >= 0
    if (num == 0) || (num == 1)
      return 1
    else
      return factorial(num-1) * num
    end
  end
end
