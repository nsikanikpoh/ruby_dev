def funWithAnagrams(text)
    # Write your code here
    result = Array.new(0)
    text.each do |str|
      temp_array = []
      text.each do |word|
        if (word.downcase.split(//).sort == str.downcase.split(//).sort)
          temp_array.push(word)
        end
      end
      result.push(temp_array)
    end
	  res = result.uniq
	  stk = []
	  res.each do |arr|
	     stk << arr[0]
	  end
    p res
	  stk.sort
  end

  str=['code', 'doce', 'ecode', 'framer', 'frame']
  str2=['code', 'aaagmnrs', 'anagrams', 'doce']


p funWithAnagrams(str)
p funWithAnagrams(str2)