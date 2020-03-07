def digital_root(n)
  # ...
  n = n.to_s.split('').map{|x| x.to_i}.reduce(&:+)
  n.to_s.length == 1 ? n : digital_root(n)
  
end

p digital_root(16)

p digital_root(942)

p digital_root(132189)

p digital_root(493193)