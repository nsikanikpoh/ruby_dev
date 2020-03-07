def tribonacci(arr, n)
	f_arr = arr
	if n == 0
		return []
	elsif n == 1
  		2.times do
    		f_arr.pop
  		end
		return f_arr
	elsif  n == 2
		return f_arr.pop
	elsif n == 3
		return f_arr
	else	
		a, b, c = f_arr[1], f_arr[2], f_arr.reduce(:+)
		while true
			f_arr << c
			a, b, c = b, c, [a,b,c].reduce(:+)
			if f_arr.length == n
				break
			end
		end
		 return f_arr
	end
end

p tribonacci([1,1,1], 2)
p tribonacci([1,1,1],1)
p tribonacci([1,1,1],3)
p tribonacci([1,1,1],10)
p tribonacci([0,0,1],10)
p tribonacci([0,1,1],10)
p tribonacci([1,0,0],10)
p tribonacci([0,0,0],10)
p tribonacci([1,2,3],10)
p tribonacci([3,2,1],10)
p tribonacci([1,1,1],1)
p tribonacci([300,200,100],0)
p tribonacci([0.5,0.5,0.5],30)
