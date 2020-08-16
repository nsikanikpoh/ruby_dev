def valid_word?(word, characters)
	word.chars.all? { |c| characters.delete_at(characters.index(c)) rescue nil }
end


  