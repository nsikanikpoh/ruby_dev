ARGV.each do |a|
  puts "Argument: #{a}"
end


puts ENV['SHELL']
puts ENV['LANG']
puts ENV['TERM']


puts $LOAD_PATH

print "Script name: ", $0, "\n"
print "Command line arguments: ", $*, "\n"

puts "Process number of this script: #{$$}"


system 'echo "Ruby"'
puts $?

%x[exit '1']
puts $?

str = "1,2,3,4,5,6,7"
p str.split

$; = ","
p str.split

p 9.fdiv 3

p 12.quo 9


def one
    puts "Inside one"
    false
end

def two
    puts "Inside two"
    true
end

puts "Short circuit"

if one && two
    puts "Pass"
end

puts "##############################"

if two || one
    puts "Pass"
end



puts ~ 7   # prints -8 
puts ~ -8  # prints 7

puts 6 & 3  # prints 2
puts 3 & 6  # prints 2

puts 6 ^ 3  # prints 5
puts 3 ^ 6  # prints 5
puts 4 ^ 8  # prints 7

puts 6 | 3  # prints 7
puts 3 | 6  # prints 7
puts 4 | 8  # prints 9

puts 6 << 1  # prints 12
puts 1 << 6  # prints 64

puts 6 >> 1  # prints 3
puts 1 >> 6  # prints 0

p (1..3).to_a
p (1...3).to_a



p ('a' .. 'l').to_a


age = 32

adult = age >= 18 ? true : false

if adult then
    puts "Adult"
else
    puts "Not adult"
end


nums = (4..50).to_a


p nums
puts "Prime numbers:"
print "2 3 "

nums.each do |i|
    
    not_prime = false
    
    (2..Math.sqrt(i).ceil).each do |j|
        not_prime = true if i % j == 0    
    end
    
    print i, " " unless not_prime
    
end

puts


require 'prime'

Prime.each(50) do |i|
    print i, " "
end

puts


print "Enter top level domain: "

domain = gets.chomp

case domain
    when "us"
        puts "United States"
    when "de" 
        puts "Germany"
    when "sk" 
        puts "Slovakia"
    when "hu" 
        puts "Hungary"
    else
        puts "Unknown"
end


for i in 0..9 do

    puts "#{i}"
end


hours_left = 12

until hours_left == 0
    
    if hours_left == 1
        puts "There is #{hours_left} hour left"
    else
        puts "There are #{hours_left} hours left"
    end

    hours_left -= 1
end

i = 0
sum = 0

while i < 10  do
   i = i + 1
   sum = sum + i
end

puts "The sum of 0..9 values is #{sum}"



planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter",
    "Saturn", "Uranus", "Neptune"]

for i in 0...planets.length

    puts planets[i]
end


num = 0

while num < 100

    num += 1

    if (num % 2 == 0)
        next
    end

    print "#{num} " 
end    

puts


while true

    r = 1 + rand(30)
    print "#{r} "

    if r == 22
        break
    end
end

puts

