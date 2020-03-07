def camel_casing(str)
	res = ""
	str.chars.each{|c| c == c.upcase ? res += " " + c : res += c}
	res
end
p camel_casing('camelCasing')
p camel_casing('camelCasingTest')