def find_nb(m)
  ct = 0
  while m > 0
    ct += 1
    m -= ct**3
  end
  m == 0 ? ct : -1
end

p find_nb(1071225)
p find_nb(91716553919377)
p find_nb(4183059834009)
p find_nb(24723578342962)
p find_nb(135440716410000)
p find_nb(40539911473216)
