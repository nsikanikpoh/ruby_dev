def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

p XO("ooxx") 
p XO("xooxx")
p XO("ooxXm") 
p XO("zpzpzpp")
p XO("zzoo")