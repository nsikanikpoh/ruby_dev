class Palindrome
end

def palindromic_ciphers(inp)
	if inp.is_a?(Numeric) 
      inp.to_s.chars.map(&:to_i).reduce(1, :*)
     elsif inp.reverse == inp.to_s
       obj = Palindrome.new
     	obj.class
     else
        values_arr = []
        alpha1 = ("a".."z").to_a
        alpha2 = (1..26).to_a
        alpha_hash = Hash[alpha1.zip(alpha2)]
        inp.each_char do |c|
          values_arr << alpha_hash[c]  
        end
        values_arr.reduce(1, :*)
    end
end
#inp.split(/\n+/)
arr = [2888348989, "mom", "wbuqomhwya", "avmoejkayj", "kktwroickr", "rhhovazpqn", 
	"rjznhrdmfh", "gqrfkuuaks", "usabdglfzy","vvbvelwypv",
	"tywzservtq", "hgzkoawsuz"]
arr_result = []

arr.each{|e| arr_result << palindromic_ciphers(e)}
arr_result.compact.each{|e| p e}

p arr_result