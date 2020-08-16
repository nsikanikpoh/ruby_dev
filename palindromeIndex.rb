# Complete the palindromeIndex function below.
def palindromeIndex(s)
	j = s.length-1
    0.upto(s.length/2 - 1) do |i|
        if(s[i]!=s[j])
            if(s[i+1]==s[j])
                if(s[i]==s[j-1] && s[i+1]==s[j-2])
                    return j
                else
                    return i
                end

            elsif(s[j-1]==s[i])
                return j
            end
        end
        j -= 1
    end
    return -1
end


p palindromeIndex("bcbc")
p palindromeIndex("hgygsvlfwcwnswtuhmyaljkqlqjjqlqkjlaymhutwsnwcflvsgygh")
p palindromeIndex("baaa")
p palindromeIndex("quyjjdcgsvvsgcdjjyq")
p palindromeIndex("aaaaa")