class String
  def all_possible_permutations
    self.chars.to_a.permutation.map(&:join)
  end
end


def printAll(str) 

    n = str.length
    opsize = 2**n
  
   # Generate all subsequences of a given string. 
     #  using counter 000..1 to 111..1
	 (1...opsize).each do |counter|
	 	subs = ""
	 	(0...n).each do |j|

	                subs += str[j]  if (counter & (1<<j)) 
	 	end
	 	# Print all permutations of current subsequence  
	     perm = subs.all_possible_permutations
	     perm.each{|i| print(''.concat(i).concat(' ')) }
	 end
end 
  

def getMaxOccurrences(s, minLength, maxLength, maxUnique)
	#arr = s.all_possible_permutations
  #return arr.select{|w| w.length >= minLength && w.length <= maxUnique}.last(maxLength).count
   return printAll(s)
end

p getMaxOccurrences("abc", 2, 4, 26)
#p getMaxOccurrences("ababab", 2, 3, 4)