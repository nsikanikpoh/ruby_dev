# Test if number is prime
def isPrime(num)
  # Your code here
  num < 2 ? false : (2..Math.sqrt(num)).none?{|i| num%i == 0}
end

p isPrime(3)
p "m".ord
p "M".ord
p 77.chr