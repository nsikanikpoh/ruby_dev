def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def numeric?(lookAhead)
  lookAhead =~ /[[:digit:]]/
end


lookAhead =~ /[[:alnum:]]/