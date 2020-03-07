class Array
	def contains?(array)
		(self & array) == array

	end
end


def connectedCities(n, g, originCities, destinationCities)
    # Write your code here
    truthy_arr = []
    origin_stack = []
    destination_stack = []
    selected_origin_stack = {}
    destination_origin_stack = {}

    originCities.each{|x| origin_stack << list_divisors(x)} #originCities divisors
    destinationCities.each{|x| destination_stack << list_divisors(x)}#DestinationCities divisors
    #select origins divisors which contains a divisor greater than threshold
    origin_stack.each.with_index do |arr, index|
    	arr.each{|x| x>g ? selected_origin_stack[index] = arr : next }
    end

#determine if a match exist between  selcted origin and destination
    destination_stack.each.with_index do |arr, index|
    	selected_origin_stack.values.each do |ar2|
      		arr.contains?(ar2) || ar2.contains?(arr) ? destination_origin_stack[index] = arr : next
      	end
    end
#derive boolean array from original array index using hashes of origin & destination
    0.upto(originCities.length - 1).each do |i|
     selected_origin_stack.keys.include?(i) && destination_origin_stack.keys.include?(i) ? truthy_arr << 1 : truthy_arr << 0
    end
    truthy_arr #return bolean array
 end

#factor divisors
def list_divisors(x)
	1.upto(x).select{|c| x%c == 0}
end

p connectedCities(6, 0, [1,4,3,6], [3,6,2,5])
p connectedCities(10, 1, [10,4,3,6], [3,6,2,9])
p connectedCities(6, 1, [1,2,4,6], [3,3,3,4])
