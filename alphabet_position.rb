
def alphabet_position(text)
  apls = %w{a b c d e f g h i j k l m n o p q r s t u v w x y z}
  
  trns = text.split(' ').map{|x| x.split('')}.flatten

  trns = trns.select{|y| y.match(/^[[:alpha:]]$/) }
  
  trns = trns.map{|y| apls.index(y.downcase)+1}.map{|u| u.to_s}.join(' ')
end


p alphabet_position("The sunset sets at twelve o' clock.")

