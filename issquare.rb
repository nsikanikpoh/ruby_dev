def is_square(x)
   x < 0 ? false : Math.sqrt(x) % 1 == 0
end


p is_square(-1)
p is_square(0) 
p is_square(3) 
p is_square(4)
p is_square(25) 
p is_square(26)