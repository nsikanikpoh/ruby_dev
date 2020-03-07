
def two_lowest arr
  # if arr has no elements, there is no answer
  # If arr has only one element, this is the lowest
  if arr.size < 2 then
    return arr.first, nil
  end

  lowest, second_lowest = nil, nil

  arr.each do |n|
    if lowest.nil? or n < lowest
      # if we have no lowest or we found an element lower than current lowest,
      # update our lowest and 2nd lowest
      second_lowest = lowest
      lowest = n
    elsif second_lowest.nil? or n < second_lowest
      # if we have no 2nd lowest or we found an element between lowest and 2nd
      # lowest, update our 2nd lowest
      second_lowest = n
    end       
  end

  return lowest, second_lowest
end

p two_lowest [1, 2, 1]
p two_lowest []