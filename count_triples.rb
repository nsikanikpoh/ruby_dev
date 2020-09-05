# Complete the countTriplets fun

def countTriplets(arr, r)
    len = arr.length
    count = 0
    m2 = {}
    m3 = {}
    arr.each do |i|
        if (m3[i])
            count += m3[i]
         end

        if (m2[i])
            m3[i*r] =  m3[i*r] ? m3[i*r] + m2[i] : m2[i]
         end

        m2[i*r] = m2[i*r] ? m2[i*r] + 1 : 1
    end
    p m2
    p m3
    count
end

ANIMAL = 'Tiger'
module Foo
	ANIMAL = 'Python'
	class Bar
		def value1
			print ANIMAL, " "
		end
	end
end

class Foo::Bar
	def value2
		print ANIMAL, " "
	end
end

Foo::Bar.new.value1
Foo::Bar.new.value2

t = :test
p t
t = :hu
#p countTriplets([1, 4, 16, 64], 4)
#p countTriplets([1, 2, 2, 4], 2)
#p countTriplets([1, 3, 9, 9, 27, 81], 3)
#p countTriplets([1, 5, 5, 25, 125], 5)


