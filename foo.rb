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

p Foo::Bar.new.value1
p Foo::Bar.new.value2