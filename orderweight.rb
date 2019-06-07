def order_weight(strng)
	 strng.split.sort_by { |n| [n.chars.map(&:to_i).reduce(:+), n] }.join(" ")
end

keys = ["a", "b", "c"]
values = [1, 2, 3]

zipped = keys.zip(values)
#p zipped
#p Hash[zipped]

p order_weight("103 123 4444 99 2000") # "2000 103 123 4444 99")
p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123") #, "11 11 2000 10003 22 123 1234000 44444444 9999")
