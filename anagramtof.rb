def anagram(s)
    return -1 if (s.length % 2 != 0)
    n = s.length;
    mid = n/2;
    a = s[0...mid]
    b = s[mid...n]
    b.chars do |c|
        if(a.index(c))
            a.delete_at(a.index(c))
        end
    end

    return a.length
end

p anagram("abccde")
p anagram("aaabbb")
p anagram("ab")
p anagram("abc")
p anagram("mnop")
p anagram("xyyx")
p anagram("xaxbbbxx")
p anagram("csgokgibmftzeozyadcofpouaerckbbpwhdg")