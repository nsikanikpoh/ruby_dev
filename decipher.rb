def decipher_this(string)
  fin_arr = []
  string.split(' ').each do |word|
  	ascii_code_to_char = word.split('').select{|c| c.match(/[[:digit:]]/)}.join().to_i.chr
    remaining_char = word.split('').select{|c| c.match(/[[:alpha:]]/)}.join()
  	#p remaining_char
  	if remaining_char.length >= 3
  		fin_arr << ascii_code_to_char + remaining_char[remaining_char.length-1] + remaining_char[1..remaining_char.length-2] + remaining_char[0]
    elsif remaining_char.length == 2
    	fin_arr << ascii_code_to_char + remaining_char[1] + remaining_char[0]
    else
    	fin_arr << ascii_code_to_char + remaining_char
    end
  end
  return fin_arr.join(' ')
end



p decipher_this('72olle 103doo 100ya'); #'Hello good day'
p decipher_this('82yade 115te 103o'); #'Ready set go'
p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka")
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp")
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare")
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri")
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple")

