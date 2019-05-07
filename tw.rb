def in_words(int)
  numbers_to_name = {
      1000000 => "million",
      1000 => "thousand",
      100 => "hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen", 
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",              
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end



puts in_words(4)
puts in_words(27)
puts in_words(102)
puts in_words(38_079)
puts in_words(82102713)


def check_palindromic(variable)
  if variable.reverse == variable #Check if string same when reversed 
    puts "#{ variable } is a palindrome."
  else # If string is not the same when reversed
    puts "#{ variable } is not a palindrome."
  end
end

check_palindromic("racecar")



time = Time.new
p time.strftime("%d/%m/%Y")        # "05/12/2015"
p time.strftime("%k:%M")           # "17:48"
p time.strftime("%I:%M %p")        # "11:04 PM"
p time.strftime("Today is %A")     # "Today is Sunday"
p time.strftime("%d of %B, %Y")    # "21 of December, 2015"
p time.strftime("Unix time is %s") # "Unix time is 1449336630"


def minutes_in_words(timestamp)
    minutes = (((Time.now - timestamp).abs)/60).round
    
    return nil if minutes < 0
    
    case minutes
      when 0..4            then '&lt; 5 minutes'
      when 5..14           then '&lt; 15 minutes'
      when 15..29          then '&lt; 30 minutes'
      when 30..59          then '&gt; 30 minutes'
      when 60..119         then '&gt; 1 hour'
      when 120..239        then '&gt; 2 hours'
      when 240..479        then '&gt; 4 hours'
      when 480..719        then '&gt; 8 hours'
      when 720..1439       then '&gt; 12 hours'
      when 1440..11519     then '&gt; ' << pluralize((minutes/1440).floor, 'day')
      when 11520..43199    then '&gt; ' << pluralize((minutes/11520).floor, 'week')
      when 43200..525599   then '&gt; ' << pluralize((minutes/43200).floor, 'month')  
      else                      '&gt; ' << pluralize((minutes/525600).floor, 'year')
    end
  end


  p minutes_in_words(Time.new)