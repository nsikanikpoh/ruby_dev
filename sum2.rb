def sum_two_smallest_numbers(numbers)
  #Your code here
  ist_sm_num = numbers.min
  numbers.delete_at(numbers.index(ist_sm_num))
  sec_sm_num = numbers.min
  ist_sm_num + sec_sm_num
end


puts sum_two_smallest_numbers([5, 8, 12, 18, 22])
puts sum_two_smallest_numbers([7, 15, 12, 18, 22]) 
puts sum_two_smallest_numbers([25, 42, 12, 18, 22])