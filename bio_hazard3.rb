class Array
	def contains?(array)
		(self & array) == array
	end
end

def pair(items)
	return [] unless items.any?
	prefix = items[0]
	suffixes = pair(items[1..-1])
	[[prefix]] + suffixes + suffixes.map { |e| [prefix] + e }
end


def bioHazard(n, affected, poisonous)
    # Write your code here
    non_coexistence_pairs ||= []
    non_valid_pairs ||= []
    non_valid_pairs2 ||= []
    stack ||= []
    stack2 ||= []

    #non_coexistence mapping
    (0...affected.length).to_a.each{|i| non_coexistence_pairs << [affected[i], poisonous[i]]}

     #generate possible pairs
     stack = pair((affected).to_a)

    #generate possible pairs
    stack2 = pair((affected.last..n).to_a)
    stack = (stack + stack2).uniq.reject{|e| e.empty? }

    non_coexistence_pairs.each do |arr|
      stack = stack.reject{ |st| st.contains?(arr)}.sort
    end
   
    #remove invalid pairs
    stack.each.with_index do |arr, i|
      if arr.length == stack[i-1].length
      	(0..(arr.length - 1)).to_a.each{|ind| non_valid_pairs << arr if stack[i-1][ind] == arr[ind]}
      end
    end
    
    stack = stack.reject{|e| non_valid_pairs.include?(e) }.sort
    
    stack.each.with_index do |arr, i|
      if (arr.length > 2 && arr[0] == stack[i-1][0])
        non_valid_pairs2 << arr if !(arr.contains?(stack[i-1]))
      end
    end
    stack = stack.reject{|e| non_valid_pairs2.include?(e) }.length

end

p bioHazard(4, [1,2], [3,4]) #7
p bioHazard(5, [1,2], [3,5]) #11
p bioHazard(8, [2,3,4,3], [8,5,6,4]) #18
p bioHazard(18, [2,3,4,3,8,9,4,33], [8,5,6,4,4,3,2,4]) #18
