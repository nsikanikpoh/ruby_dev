def validBraces(braces)
  # TODO
  full_braces = {"(" => ")", "[" => "]", "{" => "}"} 
  open_braces = full_braces.keys
  close_braces = full_braces.values
  stack = []
  braces.chars.each do |brace|
  	if open_braces.include?(brace)
  			stack << brace
  	elsif close_braces.include?(brace)
  		brace == full_braces[stack.last] ? stack.pop : (return false)
  	end
  end

  stack.empty?
end

p validBraces( "()" )
p validBraces( "[(])" )