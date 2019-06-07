word
  .each_char
  .all? { |ch| characters.delete_at(characters.index(ch)) rescue nil }