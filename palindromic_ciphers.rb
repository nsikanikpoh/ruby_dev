class Palindrome
end

def palindromic_ciphers(inp)
	if inp.is_a?(Numeric) 
      
     elsif inp.reverse == inp.to_s
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
inp.split(/\n+/)
arr = [10, "wbuqomhwya", "avmoejkayj", "kktwroickr", "rhhovazpqn", 
	"rjznhrdmfh", "gqrfkuuaks", "usabdglfzy","vvbvelwypv",
	"tywzservtq", "hgzkoawsuz"]
arr_result = []

arr.each{|e| arr_result << palindromic_ciphers(e)}
arr_result.compact.each{|e| p e}