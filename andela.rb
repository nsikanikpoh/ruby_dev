#Write a function that takes three arguments, 2 arrays (a and b) and 1 integer (c) then returns one array (d) which is created by inserting all elements in b into a at indexes which are spaced by the integer value.

#Consider all possible corner cases.
#e.g
a = ["a", "b", "c", "d", "e", "f"]
b = ["1", "2", "3"]
c = 2
#p a.drop(4)
d = ["a", "b", "1", "c", "d", "2", "e", "f", "3"]

def arg_f(a,b,n)
	(0...b.length).map{|x| [a.shift(n), b.shift]}.flatten
end

p arg_f(a,b,c)
#p arg_func(a, b, c)

arr = [2,3,0,6,7,0,5,6]

p arr.each.with_object([]) { |k, arr| k == 0 ? arr << [k,k]  : arr << k  }.flatten.take(arr.length)

def reverseString(str)
    index_hash = {}
    str_lst = str.chars
    str_lst.each.with_index{|c , i| !(c.match(/[[:alpha:]]/))? index_hash[i] = c : next}
    str_lst = str_lst.select{|c| c.match(/[[:alpha:]]/)}.join.reverse.chars
    index_hash.each{|k,v| str_lst.insert(k, v)}
    str_lst.join
end

p reverseString("a,b,$,c")
p reverseString("a,b,$,c,%,r")
