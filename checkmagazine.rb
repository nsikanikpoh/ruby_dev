def checkMagazine(magazine, note)
	mag_arr = magazine.split
	note_arr = note.split
	
    mag_hash = {}#mag_arr.group_by(&:itself).transform_values(&:count)
    note_arr.each do |word| 
    	if mag_arr.include?(word)
    	  mag_hash[word] ? mag_hash[word] = mag_hash[word] + 1 : mag_hash[word] = 1
    	end
    end
       

       if note_arr.each.all?{|word| mag_arr.include?(word) } && mag_hash.values.each.all?{|c|c == 1}
         return "Yes"
       end
       return "No"
end

p checkMagazine("give me one grand today night", "give one grand today")
p checkMagazine("two times three is not four", "two times two is four")
p checkMagazine("ive got a lovely bunch of coconuts", "ive got some coconuts")



