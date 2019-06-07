def alphabet_position(str)
	alphab = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
	str = str.split(' ')
	stack = []
	str = str.each do |w| 
		w = w.chars.select{|x| x.match(/[[:alpha:]]/)}.join
		stack << w
	end
	stack.map{|w| w.chars.map{|c| alphab.index(c.downcase)+1}.join(' ')}.join(' ')
end
p alphabet_position("The sunset sets at twelve o' clock.")


def isPrime(n)
	pm = (2..Math.sqrt(n)).select{|c|  c % 1 == 0}
	if (n < 2) then false
	elsif pm.empty? then false
	else pm
	end
end


def array_converter(*arr)
	arr.flatten.map(&:to_i).join.to_i 
end

def list_squared(startn, endn)
	sqrt_arr = []
	startn.upto(endn).each do |x|
	   arr_sum =  1.upto(x).select{|c| x%c == 0}.map{|x| x*x}.reduce(:+)
	   Math.sqrt(arr_sum) % 1 == 0 ? sqrt_arr << [x, arr_sum] : next
	end
	sqrt_arr
end


arr_1 = ['1', '5', '9']
    arr_2 = ['10', '2', '7', '10']
    arr_3 = ['3', '4', '0']

def valid_parentheses(braces)
	brac_hash = {"(" => ")",
		"{" => "}",
		"[" => "]"
	}
	open_braces = brac_hash.keys
	closing_braces = brac_hash.values

	stack = []
	braces.chars.each do |c|
		if open_braces.include? c
			stack << c
		elsif closing_braces.include? c
			c == brac_hash[stack.last] ? stack.pop : (return false)
		end
			
	end
	stack.empty?

end

p valid_parentheses("(){}[]") # true
p valid_parentheses("[(])")   # false

p list_squared(1, 250)

p array_converter(arr_1, arr_2, arr_3)
p self


p isPrime(3)
p isPrime(5)
p isPrime(6)
p isPrime(7)
p isPrime(2)
p isPrime(11)

