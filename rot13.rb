def rot13(message)
	alpha = ("a".."z").to_a
  alpha2 = ("A".."Z").to_a
	p cipher_d = Hash[alpha.zip(alpha.rotate(13))]
  p cipher_c = Hash[alpha2.zip(alpha2.rotate(13))]
  message.tr('a-zA-Z', 'n-za-mN-ZA-M')
end

p rot13("EBG13 rknzcyr.") #== "ROT13 example.";
p rot13("This is my first ROT13 excercise!") # == "Guvf vf zl svefg EBG13 rkprepvfr!"
