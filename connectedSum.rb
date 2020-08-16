require 'set'
def connectedSum(n, edges)
	set = Set.new
	set_stack = []
	count = 0
	int_stack = []
	edges.each do |edge|
		int_stack << [edge[0].to_i, edge[2].to_i]
	end
	int_stack.each.with_index do |ar, i|
		if(i==0)
			set.add(ar[0])
			set.add(ar[1])
			next
		end
		if(set.include?(ar[0]) || set.include?(ar[1]) )
			set.add(ar[0])
			set.add(ar[1])
			if(int_stack[i+1] && !(set.include?(int_stack[i+1][0]) || set.include?(int_stack[i+1][1]) ))
				set_stack << set
				set = Set.new
			end
		else
			added = false
			set_stack.each do |s|
				if(s.include?(ar[0]) || s.include?(ar[1]) )
					s.add(ar[0])
					s.add(ar[1])
					added = true
					break
				end
			end
			if(!added)
				set.add(ar[0])
				set.add(ar[1])
				if(int_stack[i+1] && !(set.include?(int_stack[i+1][0]) || set.include?(int_stack[i+1][1]) ))
					set_stack << set
				 	set = Set.new
			    end
			end
		end
		if(i == int_stack.size - 1)
			set_stack << set
		end
	end
	set_stack.each do |s|
		count += (Math.sqrt(s.size)).ceil
	end
	u = int_stack.flatten.uniq
	discon = []
	1.upto(n) do |i|
		discon << i unless u.include?(i)
	end
	count += discon.size
end


p connectedSum(10, ["1,2","1,3","2,4","3,5","7,8"])#8
p connectedSum(8, ["8,1","5,8","7,3","8,6"])#6
p connectedSum(4, ["1,2","1,4"])#3