def maskify(cc)
  # your beautiful code goes here
	cc.length > 4 ? '#'*(cc[0..cc.length - 5]).length  + cc[cc.length - 4..cc.length - 1] : cc
  
end

p maskify('4556364607935616') # should return '############5616'
p maskify('64607935616')      # should return '#######5616'
p maskify('1')                # should return '1'
p maskify('')                 # should return ''

# "What was the name of your first pet?"
p maskify('Skippy')  # should return '##ippy'
p maskify('Nananananananananananananananana Batman!') # should return '####################################man!'