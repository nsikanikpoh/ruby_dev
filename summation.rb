def summation(num)
  # code here
  num > 0 ? (1..num).reduce(:+) : false

end

p summation(1)
p summation(8)
