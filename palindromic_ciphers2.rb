class Palindrome
end

def palindromic_ciphers(inp)
	if inp.is_a?(Numeric) 
      
     elsif inp.downcase.reverse == inp.downcase.to_s
       obj = Palindrome.new
     	return obj.class
     else
        value = 0
        values_arr = []
        alpha1 = ("a".."z").to_a
        alpha2 = (1..26).to_a
        alpha_hash = Hash[alpha1.zip(alpha2)]
        
        inp.each_char do |c|
          values_arr << alpha_hash[c]  
        end

        return values_arr.reduce(1, :*)
    end
end

givenxount = gets.to_i                # Reading input from STDIN
names = []
count = 0
while (count < givenxount)
  names[count] = gets.chomp
  count = count + 1
end
 

arr_result = []

names.each{|e| arr_result << palindromic_ciphers(e)}
arr_result.compact.each{|e| p e}