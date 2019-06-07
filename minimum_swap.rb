def minimum_swaps(ratings)
	ratings = ratings.uniq
	#p ratings
	m = Hash[ratings.map.with_index {|x, i| [x, i]}]
	n = ratings.length #number of items in array

	#p m
    #p ratings
	sorted_a = ratings.sort.reverse
	#p sorted_a
    ret = 0

    for i in 0.upto(n)
    	while ratings[i] != sorted_a[i]
            ret +=1
            ind_to_swap = m[sorted_a[i]] #index to swap
           m[ratings[i]] = m[sorted_a[i]]
            ratings[i],ratings[ind_to_swap] = sorted_a[i],ratings[i]
        end
    end
    return ret
end


p minimum_swaps([3,1,2,4])