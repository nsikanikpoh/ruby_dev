def triple_double(num1,num2)
	triple = Regexp.last_match(0) if num1.to_s.match(/(\d)\1\1/)
	return 0 if triple == nil
	double = Regexp.last_match(0) if num2.to_s.match(triple[0,2])
	return 0 if double == nil
	1
end


p triple_double(451999277, 41177722899) 
p triple_double(1222345, 12345) 
p triple_double(12345, 12345)
p triple_double(666789, 12345667)
p triple_double(10560002, 100)
p triple_double(1112, 122)

def etriple_double(num1,num2)
  num1 = num1.to_s
  num2 = num2.to_s
  10.times do |i|
    if num1.include?(i.to_s*3) && num2.include?(i.to_s*2)
      return 1
    end
  end
  return 0
end