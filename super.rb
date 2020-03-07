def superSize(inp)
	inp.to_s.chars.sort.reverse.join.to_i
end


p superSize(123456) #654321
p superSize(917283456) #654321

p superSize(105) #510
p superSize(12) #21 

d = [ '3', '1', '7', '9', '9', '5' ]
p d.map{|d| d }.join()



