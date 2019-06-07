def args_count(*n)
  n.count
end
p args_count(1, 2, 3) #-> 3
p args_count(1, 2, 3, 10) #-> 4 