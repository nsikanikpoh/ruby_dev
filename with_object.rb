to_three = Enumerator.new do |y|
  3.times do |x|
    y << x
  end
end

to_three_with_string = to_three.with_object("foo")
to_three_with_string.each do |x,string|
  puts "#{string}: #{x}"
end

# => foo:0
# => foo:1
# => foo:2