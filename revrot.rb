def revrot(str, sz)
    arr_chunks = []
    arr = str.split('')
    if sz <= 0 || sz > str.length
    	return ""
    else
    	(str.length/sz).times  do
    		take_arr = arr.take(sz)
    		if take_arr.map { |digit| digit.to_i**3 }.reduce(:+).even?
    			arr_chunks << take_arr.join().reverse
    		else
    			arr_chunks << take_arr.rotate.join()
    		end
    		arr = arr.drop(take_arr.length)
        end
    	arr_chunks.join('')
    end
end



p revrot("1234", 0)
p revrot("", 0)
p revrot("1234", 5)
p revrot("733049910872815764", 5)
p revrot("123456987654", 6) #"234561876549"
p revrot("123456987653", 6) #"234561356789"
p revrot("66443875", 4) #"44668753"
p revrot("66443875", 8) #"64438756"
p revrot("664438769", 8) #"67834466"
p revrot("123456779", 8) #"23456771"
p revrot("", 8) #""
p revrot("123456779", 0) # "" 
p revrot("563000655734469485", 4) #"0365065073456944"