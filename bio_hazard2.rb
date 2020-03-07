class Array
	def contains?(array)
		(self & array) == array
	end
end

def bioHazard(n, affected, poisonous)
    # Write your code here
    stack = []
    non_valid = []
    non_valid2 = []
    non_valid3 = []
    non_valid4 = []
    non_coexistence = []
    af = affected.dup
    aa = affected.dup

     #elements not in arr
    possible_entries = (1..n).to_a.each.select{|i| !affected.include?(i)}
              .select{|i| !poisonous.include?(i)}

    pe = possible_entries.dup
    ps = possible_entries.dup
    pr = possible_entries.dup

    1.upto(possible_entries.length) do
        value = possible_entries.shift
        poisonous.each{|e| non_valid2 << [value, e] if value}
    end

     1.upto(pe.length) do
        value = pe.shift
        affected.each{|e| non_valid2 << [value, e] if value}
    end

    1.upto(aa.length) do
        value = aa.shift
        pr.each.with_index do |e, ind|
            if ind == pr.length-1
               non_valid3 << [value, e] if value
            end
            non_valid2 << [value, e] if value
        end
    end
    non_valid3 = non_valid3.select { |e| !e.include?(affected.last) }

    affected.pop
    
    1.upto(affected.length) do
        value = affected.shift
        poisonous.each{|e| non_valid2 << [value, e] if value}
    end

    1.upto(af.length) do
        value = af.shift
        ps.each{|e| non_valid2 << [value, e] if value}
    end
    
    #non_coexistence mapping
    (0...affected.length).to_a.each{|i| non_coexistence << [affected[i], poisonous[i]]}

     0..n.times.each do |i| 
    	(1..n).to_a.combination(i).to_a.each do |arr|
            stack << arr
    	end 
    end

    stack.each do |st|
        if st.length > 2
            non_valid2.each{ |arr| non_valid << st if st.contains?(arr)}
        end
    end

    p (non_valid + non_valid3 + non_valid2).uniq

  stack = stack.reject{ |e| e.empty? }.select { |e| !((non_valid + non_valid3 + non_valid2 + non_coexistence).uniq.include?(e)) }
  

   stack.each do |st|
        if st.length > 2
            non_coexistence.each{ |arr| p st if st.contains?(arr)}
        end
    end

    stack.reject{ |e| e.empty? }.select { |e| !(non_valid4.uniq.include?(e)) }

end

#p bioHazard(4, [1,2], [3,4]) #7
p bioHazard(5, [1,2], [3,5]) #11
#p bioHazard(8, [2,3,4,3], [8,5,6,4]) #18

