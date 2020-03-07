def persistence(n)
  return 0 if n < 10
  1 + persistence(n.digits.reduce(&:*))
  #n.digits.reduce(&:*)
end

p persistence(10)
p persistence(39)
p persistence(4)
p persistence(25)
p persistence(999)