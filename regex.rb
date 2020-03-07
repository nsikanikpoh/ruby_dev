def ip_address?(str)
  # We use !! to convert the return value to a boolean
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

p ip_address?("192.168.1.1")  # returns true
p ip_address?("0000.0000")    # returns false


#string contains 4 letters
p "Regex are cool".match /^\w{4}$/
p "cool".match /^\w{4}$/
triple = "9993"
p triple[3,1]


Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/

def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end
p parse_line("12:41 INFO User has logged in.")

m = "David 30".match /(?<name>\w+) (?<age>\d+)/
p m
p m[:age]
# => "30"
p m[:name]
# => "David"

#is there a number preceded by at least one letter?
def number_after_word?(str)
  !!(str =~ /(?<=\w) (\d+)/)
end
p number_after_word?("Grade 99")

p "this is some string 5565 !@^^&*".scan(/\w+/)

p "The year was 1492.".scan(/\d+/)


email = "test@example.com"
p !!email.match(/\A[\w.+-]+@\w+\.\w+\z/)