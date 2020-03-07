array = [1, 3, 4, 2, 7, 8, 9]

0..array.size.times.each do |i| 
  array.combination(i).to_a.each { |a| print a if a.inject(:+) == 9} 
end