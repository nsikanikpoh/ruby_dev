def first_non(inp)
  if inp.is_a?(String)
    inp.chars.group_by(&:itself).values.select{|x| x.one?}.flatten.first
  elsif inp.is_a?(Array)
    inp.each.group_by(&:itself).values.select{|x| x.one?}.flatten.first
  else
    nil
  end
end

p first_non([1, 2, 1])

p first_non("bcassda")