def measure(n = 0)
  start = Time.now
  if n == 0
    yield
    return Time.now - start
  else
    n.times {|now| result = yield(now)}
  end
  return (Time.now - start)/n
end
