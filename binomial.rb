# factorial method
def fact(n)
  (1..n).reduce(:*)
end

# binomial theorem, n choose k
def binomial(n,k)
  return 1 if n-k <= 0
  return 1 if k <= 0
  fact(n) / ( fact(k) * fact( n - k ) )
end

def triangle(nth_line)
  (0..nth_line).map { |e| binomial(nth_line, e) }
end

p fact(5)
p binomial(5, 2)

p triangle(5)