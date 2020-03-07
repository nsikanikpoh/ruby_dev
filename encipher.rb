def encipher_this(text)
	stack = []
	text.split.each do |w|
		w_l = w.chars
		if w.length >= 3
			stack << w_l[0].ord.to_s + w_l[w_l.length - 1] + w_l[2..w_l.length - 2].join + w_l[1]
		elsif w.length == 2
			stack << w_l[0].ord.to_s + w_l[w_l.length - 1]
		else
			stack << w_l[0].ord.to_s
		end	
	end
	stack.join(' ')
end

p encipher_this('Hello good day'); #'Hello good day'
p encipher_this('Ready set go'); #'Ready set go'
p encipher_this("A wise old owl lived in an oak")
p encipher_this("The more he saw the less he spoke")
p encipher_this("The less he spoke the more he heard")
p encipher_this("Why can we not all be like that wise old bird")
p encipher_this("Thank you Piotr for all your help")

