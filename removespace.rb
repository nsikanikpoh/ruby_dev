def removespace(str)
	arr = str.split(" ")
	arr.each.with_index do |st, index|
		 if !(st[/\w/])
		 	arr[(index-1)] = arr[(index-1)] + st
		 	arr.delete_at(index)
		 end
	end
	arr.join(" ")
end

p removespace("                                              hey   i am here . for ya , ass I am available , asjahs ah    asjas    jh.    hajhsas    ,     asjhajs asas.                      hey   i am here . for ya , ass I am available , asjahs ah    asjas    jh.    hajhsas    ,     asjhajs asas.")