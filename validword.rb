word = "orange"
characters = %w(e n g a r o)

def valid_word?(word, characters)
	word.each_char do |c|
		characters.include?(c) ? characters.delete_at(characters.index(c)) : (return false)
	end
	characters.empty? ? true : false
end 

p valid_word?(word, characters)
p valid_word?("is", %w(i s))
p valid_word?("his", %w(i s h))
p valid_word?("isp", %w(i s h j k o))
p valid_word?("sylvester", %w(i s h j k o))
p valid_word?("sylvester", %w{s y l v e s t e r})
p valid_word?("sylvester", ["a".."z"])