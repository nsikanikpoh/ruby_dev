def list_squared(startn, endn)
	sqrt_arr = []
	startn.upto(endn).each do |x|
	   arr_sum =  1.upto(x).select{|c| x%c == 0}.map{|x| x*x}.reduce(:+)
	   Math.sqrt(arr_sum) % 1 == 0 ? sqrt_arr << [x, arr_sum] : next
	end
	sqrt_arr
end
p list_squared(1, 250)