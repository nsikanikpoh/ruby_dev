a = [1,2,3,4,6,6,7,8,9,5,2,6,1,8] #=> {1:2, 2:2, 6:3, 8:2} 
names = ["Jason", "Jason", "Teresa", "Judah", "Michelle", "Judah", "Judah", "Allison"]

n = names.group_by(&:itself).transform_values(&:count).select{|k,v| v > 1}

dup = a.group_by(&:itself).transform_values(&:count).select{|k,v| v>1}
p n
p dup
