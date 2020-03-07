class Array
	def contains?(array)
		(self & array) == array
	end
end

def pair(items)
  bad = []
	return [] unless items.any?
	prefix = items[0]
	suffixes = pair(items[1..-1])
  suffixes.each.with_index do |e, i| 
     bad << suffixes[i] if ((e.length == 2 && e[0] == suffixes[i-1][0] && e[1] != suffixes[i-1][1]) || e.length > 2 && suffixes[i+1] && e[0] == suffixes[i+1][0] && !(suffixes[i+1].contains?(e)))
	end
  suffixes = suffixes.reject { |e| bad.include?(e) }
  [[prefix]] + suffixes + suffixes.map { |e| [prefix] + e }
end

def valid_pair?(stack)
  stack.each.with_index{|e, i| 
    return false if e.length >= 2 && stack[i-1].length >= 2 && e[0] == stack[i-1][0] && e[1] != stack[i-1][1] 
   }
end

def remove_invalid(stack)
   return stack if valid_pair?(stack)
   stack = stack.each.with_index{|e, i| 
      stack.slice!(i) if e.length >= 2 && stack[i-1].length >= 2 && e[0] == stack[i-1][0] && e[1] != stack[i-1][1] 
   }
   remove_invalid(stack)
end

def bioHazard(n, affected, poisonous)
    # Write your code here
    non_coexistence_pairs ||= []
    missing = (poisonous.min..n).to_a.each.reject { |e| poisonous.include?(e) }
    missing = ([affected.last] + missing).combination(2).to_a
    #non_coexistence mapping
    (0...affected.length).to_a.each{|i| non_coexistence_pairs << [affected[i], poisonous[i]]}
    #generate possible pairs
    stack = (pair((affected).to_a) + pair((affected.last..n).to_a)).uniq.reject{|e| e.empty? }
    non_coexistence_pairs.each do |arr|
      stack = stack.reject{ |st| st.contains?(arr)}
    end
   stack = stack.sort.reject { |e| missing.include?(e) }
   p remove_invalid(stack).length
end

bioHazard(4, [1,2], [3,4]) #7
bioHazard(5, [1,2], [3,5]) #11
bioHazard(8, [2,3,4,3], [8,5,6,4]) #18
#p bioHazard(18, [2,3,4,3,8,9,4,33], [8,5,6,4,4,3,2,4]) #18
