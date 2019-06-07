def duplicate_count(text)
    #your code here
    text.chars.group_by(&:itself).transform_values(&:count).select{|k,v| v>1}.keys.count
end
p duplicate_count("aabbcde")
p duplicate_count("Indivisibilities")