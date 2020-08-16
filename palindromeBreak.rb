def breakPalindrome(str)
	n = str.length
	return "IMPOSSIBLE" if(str.empty? || n == 1)
	0.upto(n/2) do |i|
		next if(str[i] == 'a')
		str[i] = 'a'
		return str
	end
	str = "IMPOSSIBLE"
	str
end

p breakPalindrome("aaa")
p breakPalindrome("mom")
p breakPalindrome("aaaab")
p breakPalindrome("aaabbaaa")