puts "Ruby Version: "+RUBY_VERSION
puts "Ruby Patch Level: "+RUBY_PATCHLEVEL.to_s

def in110(a, b)
   return (((a >= 1 && a <= 10) && !(b >= 1 && b <= 10)) ||
		(!(a >= 1 && a <= 10) && (b >= 1 && b <= 10)));	
end
print in110(1, 12),"\n"
print in110(10, 15),"\n"
print in110(11, 25),"\n"

def if_string(str)
    str[0, 3] == "if " ? str : "if " << str 
end

print if_string("if else"),"\n" 
print if_string("else"),"\n" 

def multiple_string(str, n)
    str.length < 3 ? str*n : str[0..2]*n
end

print multiple_string('abcdefg', 1),"\n"
print multiple_string('abcdefg', 2),"\n"
print multiple_string('abcdef', 1),"\n"
print multiple_string('abcdef', 2),"\n"
print multiple_string('abc', 1),"\n"
print multiple_string('ab', 2),"\n"

def chare(str)
	str[-1]+str[1..-2]+str[0]
end

print chare("python\n")
print chare("java\n")

def diff_33(n)
    n > 33 ? ((n-33)*2).abs : (n-33).abs
end
print diff_33(47),"\n" 
print diff_33(17)



x,y,z = 2,5,4
if x >= y and x >= z
     puts "x = #{x} is greatest."
elsif y >= z and y >= x 
     puts "y = #{y} is greatest."
else 
     puts "z = #{z} is greatest."
end



def near_hundred(n)
    (n-100).abs <= 10 || (n-200).abs <= 10
end

print near_hundred(10),"\n"
print near_hundred(150),"\n" 
print near_hundred(110),"\n" 
print near_hundred(90)

def dsum(a,b)
	a==b ? (a+b)*2 : a+b
end

print dsum(2,3),"\n"
print dsum(2,2)


9.times{
      puts("Ruby exercises")
 }

 def temp(str)
 	return str[-1]+str+str[-1] if str.length >= 1
 end

 print temp("abc"),"\n"
print temp("abcd"),"\n"
print temp("java"),"\n"


 def temp2(a,b)
 	a.to_s.split('')[-1] == b.to_s.split('')[-1] ? true : false
 end

 print temp2(123, 43),"\n"
print temp2(23,44),"\n"
print temp2(455, 85),"\n"

year = [2012, 1500, 1600, 2020]
year.each do |y|
  if y % 400 == 0
  	 puts y.to_s + ' is leap year'
    elsif y % 4==0 && y % 100 != 0 
      puts y.to_s + ' is leap year'
  else  puts y.to_s + ' is not leap year'
  end
end


def test_int(a, b)
   return  (((a >= 10 && a <= 20) && (b >= 10 && b <= 20)) ||
	((a >= 20 && a <= 30) && (b >= 20 && b <= 30)));
end

print test_int(10, 15),"\n"
print test_int(6, 9),"\n"
print test_int(22, 30),"\n"
print test_int(45, 55),"\n"


def text_test(str)
   len = str.length();
   temp = "";
	if(len >= 1)
	   if(str.slice(0) == 'p')
			temp += str.slice(0);
		if(len >= 2)
			if(str.slice(1) == 's')
			temp += str.slice(1);
		    end	
	    end
	  end
	end 
  return temp;
end
print text_test("psabcd"),"\n"
print text_test("abcd"),"\n"

require 'date'
current_time = DateTime.now
cdt = current_time.strftime "%d/%m/%Y %H:%M"
puts "Current Date and Time: "+cdt


def check_num(x, y, z)
  if (y-z).abs < 3
        return false
    end
    return (x-y).abs<=1 && (x-z).abs>=3 || (x-z).abs<=1 && (x-y).abs>=3
end
print check_num(2, 3, 11),"\n"
print check_num(2, 3, 4),"\n"
print check_num(5, 2, 4),"\n"

def check_num(a, b, c)
    if a==b && a==c
        return 0
    elsif a==b
        return c
    elsif a==c
        return b
    elsif b==c
        return a
    else
        return a+b+c
    end
end
print check_num(5, 5, 5),"\n"
print check_num(5, 5, 7),"\n"
print check_num(5, 7, 5),"\n"
print check_num(7, 5, 5),"\n"
print check_num(1, 2, 3),"\n"