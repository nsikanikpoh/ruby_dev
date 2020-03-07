def prm(n)
	pn = [2]
	if n < 2
    	return false 
    else
    	(2..n).each do |i|
    		not_prime = false
    		(2..Math.sqrt(i).ceil).each do |j|
    			not_prime = true if i % j == 0
    		end
    		pn.push(i) unless not_prime
    	end

    end

    return pn
end

p prm(1)
