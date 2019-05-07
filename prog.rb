def sums
	temp ||= []

	numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
	numbers.each do |n|
	 temp << n.sum
	end
	return temp
end

p sums

p "@@@@@@@@@@@@@@@@@@@@@@@@@"

	
	numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

	
lines = numbers.collect{|x| x.map{|i| '*'*i}.join(" ")}
p lines	
 lines.each { |line| puts line }

p "@@@@@@@@@@@@@@@@@@@@@@@@@"
numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1]
]

lines = numbers.map do |row|
  row.map { |number| "*" * number }.join(" ")
end

lines.each { |line| puts line }

p "@@@@@@@@@@@@@@@@@@@@@@@@@"

languages = {
  :de => 'German',
  :en => 'English',
  :es => 'Spanish',
}
dictionary = {
  :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  :en => { :one => 'one', :two => 'two', :three => 'three' },
  :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}

selected = languages.select do |key, words|
  key == :de or key == :es
end

p selected
p "@@@@@@@@@@@@@@@@@@@@@@@@@"
lines = selected.map do |key, name|
  words = dictionary[key]
  p words
  parts = words.map { |key, word| "#{key} means #{word}" }
  "In #{name}, #{parts.join(", ")}."
end

puts lines.join("\n")
p "@@@@@@@@@@@@@@@@@@@@@@@@@"


lines = languages.keys.map do |key|
  words = dictionary[key].values
  "#{key} #{words.join(' ')}"
end

puts lines.join("\n")

p "@@@@@@@@@@@@@@@@@@@@@@@@@"



languages = {
  :de => 'German',
  :en => 'English',
  :es => 'Spanish',
}
dictionary = {
  :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
  :en => { :one => 'one', :two => 'two', :three => 'three' },
  :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}



columns = dictionary.values.map { |words| words.values }.transpose

p columns
widths = columns.map do |column|
  column.max_by { |word| word.length }.length
end

p widths

lines = languages.keys.map do |key|
  words = dictionary[key].values
  words = words.map.with_index { |word, ix| word.ljust(widths[ix]) }
  "#{key} | #{words.join(' | ')}"
end
lines = lines.map { |line| "| #{line} |" }

puts lines.join("\n")

p "@@@@@@@@@@@@@@@@@@@@@@@@@"


words = ["one", "two", "three", "four", "five"]
words = words.select.with_index { |word, ix| ix.even? }
words = words.map { |word| word.capitalize }

words = words.map.with_index do |word, ix|
  hearts = "<3" * (ix * 2 + 1)
  "#{word} #{hearts}"
end
p words


p "@@@@@@@@@@@@@@@@@@@@@@@@@"

words = ["one", "two", "three", "four", "five"]
words = words.select.with_index { |word, ix| ix.even? }
words = words.map { |word| word.capitalize }

words = words.map.with_index do |word, ix|
  hearts = "<3" * (ix + 1)
  "#{word} #{hearts}"
end

puts words.join("\n")

p "@@@@@@@@@@@@@@@@@@@@@@@@@"

text = "A regular expression is a sequence of characters that define a search pattern."

matches = text.match(/character/)
p matches

matches = text.match(/sentence/)
p matches