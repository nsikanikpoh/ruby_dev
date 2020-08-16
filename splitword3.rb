def perms(str)
  
  return [str] if str.length < 2
  
  return [str[0] + str[1], str[1] + str[0]] if str.length == 2
  
  all_perms = []
  
  str.split('').each_with_index do |char, ind|
    sub_str = str[0...ind] + str[ind+1..-1]
    sub_perms = perms(sub_str)
    sub_perms.each do |sp|
      all_perms << sp
      all_perms << char
      all_perms << char + sp
    end
  end
  
  all_perms.uniq
  
end

p perms("abc")
p perms("ababab")
