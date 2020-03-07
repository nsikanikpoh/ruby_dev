def duplicate_count(text)
	#h = {}
    #your code here
    text.chars.group_by(&:itself).transform_values(&:count).select{|k,v| v>1}.keys
    #text.chars do |c|
    	#h[c] ? h[c] = h[c] + 1 : h[c] = 1 
   # end
    #h.select{|k, v| v>1}.keys.count

end
p duplicate_count("aabbcde")
p duplicate_count("Indivisibilities")

p duplicate_count("Indivisibilitiesskkkklll")