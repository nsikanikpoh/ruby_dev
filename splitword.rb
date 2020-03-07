def getMaxOccurrences(s, minLength, maxLength, maxUnique)
	return 1 if s.length < maxUnique
	  arr = (0..s.length).inject([]){|ai,i|
	    (1..s.length - i).inject(ai){|aj,j|
	      aj << s[i,j]
	    }
	  }.uniq

  return arr.select{|w| w.length >= minLength && w.length <= maxUnique}.last(maxLength).count

end

p getMaxOccurrences("abcde", 2, 4, 26)
p getMaxOccurrences("ababab", 2, 3, 4)