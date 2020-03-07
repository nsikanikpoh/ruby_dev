def fib(n)
	
	a,b = 0,1
	finlist = [a]
	while n > b
		finlist << b
		 a,b = b,(a+b)
	end
	return finlist
end

p fib(500)
