def args_count(*n)
  n.count
end
p args_count(1, 2, 3) #-> 3
p args_count(1, 2, 3, 10) #-> 4 

arr = ["", "3", "4", "7", "8"]
p arr.map(&:to_i).reject{|e| e==0}