#Interview Problem: Min Jumps Array
#Given an array of non-negative integers, A, of length N, you are initially positioned at the first index of the array.
#Each element in the array represents your maximum jump length at that position.
#Return the minimum number of jumps required to reach the last index.
#If it is not possible to reach the last index, return -1.
def minjumps(list)
	position = 0
	jumps = 1
	lastseen = 0
	n = list.length
	#perform jumps
	while((position + list[position]) < n-1)
		jumpspan = list[position]
		#not possible to reach end if you cant jump
		return -1 if jumpspan == 0
		#find maximum jump in span (including offset from position)
		jumpindex = 0
		jumpmax = -1
		(([position+1, lastseen].max)...([(position + jumpspan + 1), n].min)).each do |ji|
			distance = ji - position + list[ji]
			if distance > jumpmax
				jumpmax = distance
				jumpindex = ji
			end
			lastseen = ji
		end
		jumps += 1
		position = jumpindex
	end
	jumps
end

p (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
p [0, 0, 3, 0, 2, 4, 5, 0, 7].partition { |v| v.zero? }.reverse!.flatten  #=> [3, 2, 4, 5, 7, 0, 0, 0, 0]

p minjumps([2, 1, 1]) #1
#Output: 1 
#Explanation 1:
#The shortest way to reach index 2 is
#Index 0 -> Index 2
#that requires only 1 jump.

#Test Case 2:

p minjumps([2,3,1,1,4])
#Output: 2
#Explanation 2:
#The shortest way to reach index 4 is
#Index 0 -> Index 1 -> Index 4
#that requires 2 jumps.