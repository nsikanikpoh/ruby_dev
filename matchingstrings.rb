def matchingStrings(strings, queries)
  str_h = strings.group_by(&:itself).transform_values(&:count)
  value_arrays = []
  queries.each do |e|
    str_h[e] ? value_arrays << str_h[e] : value_arrays << 0
  end
  value_arrays
end

p matchingStrings(["aba","baba","aba","xzxb"], ["aba","xzxb","ab"])