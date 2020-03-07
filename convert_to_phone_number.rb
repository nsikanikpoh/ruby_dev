LETTERS = {"1" => ["1", "1", "1"],
   "2" => ["a", "b", "c"],
   "3" => ["d", "e", "f"],
   "4" => ["g", "h", "i"],
   "5" => ["j", "k", "l"],
   "6" => ["m", "n", "o"],
   "7" => ["p", "q", "r", "s"],
   "8" => ["t", "u", "v"],
   "9" => ["w", "x", "y", "z"]}


def convert_to_phone_number(string)
  string.each_char.with_object([]) { |x, arr| LETTERS.each { |k,v| (arr.push k; break) if v.include?(x) }}.join
end


def convert_word(number)
	letters = {"1" => ["1", "1", "1"],
       "2" => ["a", "b", "c"],
       "3" => ["d", "e", "f"],
       "4" => ["g", "h", "i"],
       "5" => ["j", "k", "l"],
       "6" => ["m", "n", "o"],
       "7" => ["p", "q", "r", "s"],
       "8" => ["t", "u", "v"],
       "9" => ["w", "x", "y", "z"]}
      stack = []
      keys = number.to_s.chars.map{|digit|letters[digit]}
      #p keys
      stack << keys.shift.product(*keys).map(&:join) #=> ["ap", "aq", "ar", "as", "bp", "bq", "br", "bs", "cp", "cq", "cr", "cs"]
      stack.flatten
end

p convert_to_phone_number "foobar"
p convert_to_phone_number "motortruck"
p convert_word 27
p convert_word 86



