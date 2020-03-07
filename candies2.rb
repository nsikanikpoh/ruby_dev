n = gets.to_i
line = Array.new(n).map{|i| gets.to_i}.insert(0,0).push(0)
candies1 = Array.new(n,1).insert(0,0).push(0)
candies2 = Array.new(n,1).insert(0,0).push(0)
candies1[1] = 1
for i in 2..n
    if line[i-1] < line[i]
        candies1[i] = candies1[i-1] + 1
    else
        candies1[i] = 1
    end
end
candies2[n] = 1
(n-1).downto(1){ |i|
    if line[i] > line[i+1]
        candies2[i] = candies2[i+1] + 1
    else
        candies2[i] = 1
    end
}
ans = 0
for i in 1..n
    if candies1[i] >= candies2[i]
        ans += candies1[i]
    else
        ans += candies2[i]
    end
end
puts ans


#!/bin/ruby

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')
def hist(array)
    array.reduce(Hash.new(0)) do |hist, element|
        hist[element] = hist[element] + 1
        hist
    end
end
magazine_hist = hist(magazine)
print (hist(ransom).all? do |word, frequency|
        frequency <= magazine_hist[word]
    end) ? "Yes" : "No"
    