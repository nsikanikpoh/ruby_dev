msg = "Ruby language"

puts msg["Ruby"]
puts msg["Python"]

puts msg[0]
puts msg[-1]

puts msg[0, 3]
puts msg[0..9]
puts msg[0, msg.length]



puts "I hear Mariachi static on my radio 
And the tubes they glow in the dark 
And I'm there with her in Ensenada 
And I'm here in Echo Park
"

puts %/
Carmelita hold me tighter
I think I'm sinking down 
And I'm all strung out on heroin
On the outskirts of town/




website = "zetcode.com"

website.each_char do |c|
    print "#{c} has ASCII code %d\n" % c.ord    
end


# decimal
puts "%d" % 300

# hexadecimal
puts "%x" % 300

# octal
puts "%o" % 300

# binary
puts "%b" % 300

# scientific
puts "%e" % (5/3.0)



puts "%#b" % 231
puts "%#x" % 231
puts "%#o" % 231

puts "%.0e" % 231
puts "%#.0e" % 231

puts "%.0f" % 231
puts "%#.0f" % 231

puts "%d" % 231
puts "%+d" % 231
puts "%d" % -231
puts "%+d" % -231

puts "%b" % -231
puts "%o" % -231
puts "%x" % -231

puts "%+b" % -231
puts "%+o" % -231
puts "%+x" % -231


puts "%010d" % 1
puts "%010d" % 16
puts "%010d" % 165
puts "%010d" % 1656
puts "%010d" % 16567

puts "%-10d" % 1
puts "%-10d" % 16
puts "%-10d" % 165
puts "%-10d" % 1656
puts "%-10d" % 16567


puts "%.*f" % [3, 1.1111111]
puts "%0*d" % [10, 2]
puts "%0*.*f" % [10, 3, 1.1111]