def split_word s
  indices = (0...s.length).to_a
  indices.product(indices).reject{|i,j| i > j}.map{|i,j| s[i..j]}.uniq
end


p split_word("abc")