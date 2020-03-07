
def alphabet_position(text)
  apls = ("a".."z").to_a
  text.split.map{|x| x.chars}.flatten
      .select{|y| y.match(/^[[:alpha:]]$/) }
         .map{|y| apls.index(y.downcase)+1}
           .map(&:to_s).join(' ')
end


p alphabet_position("The sunset sets at twelve o' clock.")

