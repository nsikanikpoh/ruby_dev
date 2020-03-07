def dig_pow(n,p)
x = []
k = 0
n.to_s.chars.each_with_index {|digit, i| x << digit.to_i**(p+i)}
x = x.inject(:+)
if x%n==0
  return (x/n) 
else
  return -1
end
end

p dig_pow(89, 1)#, 1)
p dig_pow(92, 1)#, -1)
p dig_pow(46288, 3)#, 51)