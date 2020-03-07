myob = [{ref: 3, jik: 6, hj: 4, reif: 3, get:8, jkaj:9, relf: 3,}]
p = myob.each.with_object([]){|var, arr| arr << var.values }.flatten.select{|k| k != 3}

#p arr.each.with_object([]) { |k, arr| k == 0 ? arr << [k,k]  : arr << k  }.flatten.take(arr.length)


d=[2,3]
p p
puts d
