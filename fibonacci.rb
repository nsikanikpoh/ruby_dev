def fib(n)
	finlist = []
	a,b = 0,1
	while n > b
		finlist << b
		 a,b = b,(a+b)
	end
	return finlist
end

p fib(500)
