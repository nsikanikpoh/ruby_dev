def split_word s
  indices = (0...s.length).to_a
  indices.product(indices).reject{|i,j| i > j}.map{|i,j| s[i..j]}.uniq
end

def countSubstrings(s, queries)
    #
    # Write your code here.
    #
    stack = []
    queries.each do |arr|
    	stack << split_word(s[arr[0]..arr[1]])
    end
    stack.map { |e| e.length }
end

p countSubstrings("aabaa", [[1,1], [1,4], [1,1], [1,4], [0,2]])

