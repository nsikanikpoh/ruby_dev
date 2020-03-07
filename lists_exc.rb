lts = %w{ a b c d e f g h}


puts lts.take(4).inspect

lts2 = lts.take_while { |e| e < 'f' }
puts lts2.inspect


lts = %w{ a b c d e f g h}

puts lts.slice(0)
puts lts.slice(-1)
puts lts.slice(0, 3).inspect
puts lts.slice(2..6).inspect
puts lts.slice(2...6).inspect


lts = [0, 1, 2, 3, 4, 5, 6]

puts lts.fetch(0)
puts lts.fetch(-2)
puts lts.fetch(8, 'undefined')
puts lts.fetch(8) { |e| -2*e }


lts = %w{ a b c d e f g h}

puts lts.values_at(1..5).inspect
puts lts.values_at(1, 3, 5).inspect
puts lts.values_at(1, 3, 5, 6, 8).inspect
puts lts.values_at(-1, -3).inspect

#random element
lts = %w{ a b c d e f g h}

puts lts.sample
puts lts.sample(3).inspect



lts = []

lts.insert 0, 'E', 'F', 'G'
lts.push 'H'
lts.push 'I', 'J', 'K'
lts << 'L' << 'M' 
lts.unshift 'A', 'B', 'C' #prepends elements to the front
lts.insert(3, 'D')
    
puts lts.inspect


lts = %w{ a b c d e f g h}

lts.pop#removes last element
lts.pop

puts lts.inspect

lts.shift#removes first element
lts.shift

puts lts.inspect

lts.delete_at(0)
lts.delete('d')

puts lts.inspect

puts lts.clear
puts lts.inspect




nms = [2, -1, -4, 0, 4, 3, -2, 3, 5]

nms.delete_if { |x| x < 0 }

puts nms.inspect