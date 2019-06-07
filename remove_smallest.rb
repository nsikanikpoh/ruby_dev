def remove_smallest(arr)
	arr.empty? ? [] : arr.delete_at(arr.index(arr.min)); arr
end



p remove_smallest([1, 2, 3, 4, 5])
p remove_smallest([5, 3, 2, 1, 4])
p remove_smallest([2, 2, 1, 2, 1])
p remove_smallest([])