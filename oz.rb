m = Integer(gets.chomp)
a = []
m.times do
  a << Integer(gets.chomp)
end
 
a.sort!
 
def check(num, a)
  mod = a[0] % num;
  (1..(a.length-1)).each do |i|
    return false if a[i] % num != mod
  end
  return true;
end
 
p = a[1] - a[0]
d = 1
res = []
while(d*d <= p) do
  if(p % d == 0)
    m1 = d
    m2 = p/d
    res << m1 if(m1!=1 && check(m1, a))
    res << m2 if(m2!=m1 && check(m2, a))
  end
  d += 1
end
 
res.sort!.each do |r|
  print r
  print " "
end