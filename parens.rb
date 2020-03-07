PARENS = {
  "(" => ")",
  "{" => "}",
  "[" => "]"
}
OPENING_PARENS = PARENS.keys
CLOSING_PARENS = PARENS.values
def valid_parentheses(string)
  stack = []
  string.chars.each do |brace|
    if OPENING_PARENS.include? brace
      stack << brace
    elsif CLOSING_PARENS.include? brace
      brace == PARENS[stack.last] ? stack.pop : (return false)
    end
  end
  stack.empty?
end
p valid_parentheses("(){}[]") # true
p valid_parentheses("[(])")   # false
