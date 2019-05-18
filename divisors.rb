def list_squared(start_num, end_num)
	res = []
	it1 = start_num.upto(end_num).select{|x| process_squared(x)}
	
	it1.each do |x|
		sum_s = 1.upto(x).select{|y| x % y == 0}.map{|x| x * x }.sum
		res.push([x, sum_s])
	end
	
	return res
end

def process_squared(end_num)
	it1 = 1.upto(end_num).select{|x| end_num % x == 0}
	sqaure_sum = it1.map{|x| x * x }.sum
	if Math.sqrt(sqaure_sum) % 1 == 0
		return true
	end
end

p list_squared(1, 250)