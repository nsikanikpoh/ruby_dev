def nonDivisibleSubset(k,arr)
    new_arr= [0]*k
    res = 0
    arr.each{|x| new_arr[x % k] += 1 }
    p new_arr
        (0...(k/2+1).floor).each do |i|
            if i == 0 || k == i*2
                res += 1 unless new_arr[i].zero?
            else
                res += [new_arr[i], new_arr[k-i]].max
            end
        end
    res
end



p nonDivisibleSubset(3, [1,7,2,4])
p nonDivisibleSubset(7, [278, 576, 496, 727, 410, 124, 338, 149, 209, 702, 282, 718, 771, 575, 436])
p nonDivisibleSubset(4, [19,10,12,10,24,25,22])


