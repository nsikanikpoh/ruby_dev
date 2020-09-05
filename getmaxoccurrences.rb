def getMaxOccurrences(components, minLength, maxLength, maxUnique)
	return 0 if maxUnique < minLength
	j = 1
	n = components.length
	m_hash = {}
	while(true)
		0.upto(n - j + 1) do |i|
			substr = components[i...i + j]
			if(minLength <= substr.length  && substr.length <= maxLength && 
				substr.chars.length <= maxUnique)
				if m_hash[substr]
					m_hash[substr] += 1
				else m_hash[substr]
					m_hash[substr] = 0
				end
			end
		end
		break if j == components.length
        j += 1
	end
	m_hash.values.max
end

p getMaxOccurrences("abcde", 2, 3, 3)
p getMaxOccurrences("abcde", 2, 4, 26)
p getMaxOccurrences("ababab", 2, 3, 4)