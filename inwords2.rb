def in_words(n)
	num_word_dic = {
		1000000 => "million",
		1000 => "thousand",
		100 => "hundred",
		90 => "ninety",
		80 => "eighty",
		70 => "seventy",
		60 => "sixty",
		50 => "fifty",
		40 => "fourty",
		30 => "thirty",
		20 => "twenty",
		19 => "nineteen",
		18 => "eigthteen",
		17 => "seventeen",
		16 => "sixteen",
		15 => "fifteen",
		14 => "fourteen",
		13 => "thirteen",
		12 => "twelve",
		11 => "eleven",
		10 => "ten",
		9 => "nine",
		8 => "eight",
		7 => "seven",
		6 => "six",
		5 => "five",
		4 => "four",
		3 => "three",
		2 => "two",
		1 => "one"

	}
	res = ""

	num_word_dic.each do |num, name| 
	if n == 0
		return res
	elsif n.to_s.length == 1 && n/num > 0
		return res + "#{name}"
	elsif n < 100 && n/num > 0
		return res + "#{name} " if n%num == 0
		return res + "#{name} " + in_words(n%num)
	elsif n/num > 0
		return res + in_words(n/num) + " #{name} " + in_words(n%num)
	end
		
end

end


puts in_words(4)
puts in_words(27)
puts in_words(102)
puts in_words(38_079)
puts in_words(82102713)