def rot5(str)
	alpha = ("a".."z").to_a
	cipher = Hash[alpha.zip(alpha.rotate(5))]
	str.chars.each.inject("dec_"){|injv, char| injv + cipher[char]}
end

def rot13(str)
	alpha = ("a".."z").to_a
	cipher = Hash[alpha.zip(alpha.rotate(13))]
	str.tr("a-zA-Z", "n-za-mN-ZA-M")
end

p rot5("password")
p rot13("EBG13 rknzcyr.") #== "ROT13 example.";
p rot13("This is my first ROT13 excercise!") # == "Guvf vf zl svefg EBG13 rkprepvfr!"
