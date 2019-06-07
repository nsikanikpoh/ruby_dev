def alphabet_position(text)
  return text.downcase.split('').map { |ch| ch.ord + 1 - 'a'.ord if ch.match(/^[[:alpha:]]$/) }.compact.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.")


