def palindrome_chain_length(n)
  counter = 0
  number = n
  
  while !test_palindrome(number) do
    number_reverse = number.reverse
    number = number + number_reverse
    counter += 1
    
  end
 
  return counter
end

class Numeric
  def reverse
    self.to_s.reverse.to_i
  end
  def size
    self.to_s.length
  end
end

def test_palindrome(og)
  og_digits = og.to_s.chars.map{|x| x.to_i}
  og_length = og_digits.length

  og_length.times do |i|
    last_i = i+1
    if og_digits[i] == og_digits[og_length - last_i]
      next
    else
      return false
      break
    end
  end
end

p palindrome_chain_length(87)