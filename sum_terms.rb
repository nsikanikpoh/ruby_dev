def sum_terms(n)
  # your code here
     (0..n).inject {|sum, value| sum + (value*value + 1) }
end

p sum_terms(25)

p "true" if "gahs".downcase