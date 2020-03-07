def rot13(message)
  message.tr('a-zA-Z', 'n-za-mN-ZA-M')
end
#p "EBG13".gsub(/[[:alpha:]]/, "rrr")

p rot13("EBG13 rknzcyr.") #== "ROT13 example.";
p rot13("This is my first ROT13 excercise!") # == "Guvf vf zl svefg EBG13 rkprepvfr!"
