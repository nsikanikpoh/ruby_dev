def twoStrings(s1, s2)
	res="processing"
	s1_arr=s1.chars.sort.uniq
	s2_arr=s2.chars.sort.uniq
	s2_arr.each do |c|
		if s1_arr.include?(c)
			res="YES"
			break
		end
	end
	res == "processing" ? "NO" : res
end

p twoStrings("hello", "world")
p twoStrings("hi", "world")