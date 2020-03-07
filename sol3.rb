def solution(arr, key)
		arr.each_slice(key).to_a
end

p solution([4, 35, 80, 123, 12345, 44, 8, 5,7,44], 4)