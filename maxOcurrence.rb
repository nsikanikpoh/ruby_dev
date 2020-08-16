def maxOccurence(arr)
	m_hash = arr.group_by(&:itself).transform_values(&:count)
	elem = 0, elem_count = 0
	m_hash.each do |k, v|
		if v > elem_count
			elem = k
			elem_count = v
		end
	end
	"#{elem} occured #{elem_count} times"
end

p maxOccurence(["1", "1","1","1","1","1","5","5","12","12","12","12","12","12","12","12","12","12","8"])