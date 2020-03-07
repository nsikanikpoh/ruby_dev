
def solution(digits)
  digits.to_s.split('').each_cons(5).max.join.to_i
end

p solution(283910)