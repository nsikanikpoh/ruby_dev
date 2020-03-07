def max_rot(n)
    # your code
     f_arr = []
     arr = n.to_s.chars
     0.upto(arr.length - 1) do |i|
     	take_arrs = arr.take(i)
     	drop_arrs = arr.drop(i)
     	res_arrs = take_arrs + drop_arrs.rotate
     	f_arr << res_arrs.join().to_i
     	arr = res_arrs
     end
     return f_arr.max
end

p max_rot(56789)
p max_rot(38458215)
p max_rot(195881031)
p max_rot(896219342)
p max_rot(69418307)
