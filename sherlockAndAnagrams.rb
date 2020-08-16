def sherlockAndAnagrams(s)
	buckets = {}
	n = s.length
	count = 0
	0.upto(n-1) do |i|
		0.upto(n - i - 1) do |j|
			sub=(s[j...j+i+1]).chars.sort.join
			if buckets[sub]
				 buckets[sub] += 1
			else
				buckets[sub] = 1
			end
		end
	end
	buckets.each do |k, v|
		count += buckets[k] * (buckets[k]-1)/2
	end
	count
end

p sherlockAndAnagrams("abba")
p sherlockAndAnagrams("kkkk")

