def splitInteger(num, parts)
   #your code here
#first creates arrays of number of parts 
  arr_base = Array.new(parts, (num / parts))
  #check for even
  remainder = num % parts            
  return arr_base if remainder.zero? #set first arrays as evens arrays
  
  while remainder > 0
    #increment arays from 0 index by 1 from remainder 
    arr_base.each.with_index do |num, index|
      if remainder > 0
        arr_base[index] += 1
        remainder -= 1 #loop control
      end
    end
  end
  arr_base.sort
end

p splitInteger(21, 6)
p splitInteger(19, 4)