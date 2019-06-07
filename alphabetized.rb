def alphabetized(s)
  #your code here
   s.gsub(/([^A-Za-z])/, '').chars.sort(&:casecmp).join
end

p "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
p "hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
p "hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
p "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
p 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"


p alphabetized("")
p alphabetized(" ")
p alphabetized(" a")
p alphabetized("a ")
p alphabetized(" a ")
p alphabetized("A b B a")
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z")
p alphabetized("!@$%^&*()_+=-`,")
p alphabetized("The Holy Bible")
p alphabetized("CodeWars can't Load Today")
