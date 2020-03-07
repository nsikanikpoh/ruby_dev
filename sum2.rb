def sum_two_smallest_numbers(numbers)
  #Your code here
  numbers.sort.select{|e| e > numbers.sort[0] }.first + numbers.sort[0]
end


puts sum_two_smallest_numbers([5, 8, 12, 18, 22]) #13
puts sum_two_smallest_numbers([7, 15, 12, 18, 22]) #19
puts sum_two_smallest_numbers([25, 42, 12, 18, 22]) #30