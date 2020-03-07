def upsidedown(n)
	arr =[]
	n.each.with_index do |x, i|
	   n[(i+1)] != nil ? arr << x + n[(i+1)] : next
	end
	arr.length == 2 ? arr.reduce(:+) : upsidedown(arr)
end

p upsidedown([2,1,1]) 
p upsidedown([2,1,1,3]) 
p upsidedown([1,2,3,4,5]) 