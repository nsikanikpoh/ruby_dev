numbers = [1,2,2,3,4,5]
def find_duplicates(numbers)
	numbers.group_by(&:itself).transform_values(&:count).select{|k,v| v>1}.keys
end
p find_duplicates(numbers)