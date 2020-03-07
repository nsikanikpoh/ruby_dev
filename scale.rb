require "set"
def scale(strng, k, n)
    # your code
    return "" unless strng.length>1
    fl = []
    strng.split().each do |w|
     	fl << w.chars.map{|w| w*k}.join('') 
    end
    str = fl.map{|c| c*n}.join('')
    str.chars.each_slice(strng.split("\n")[0].length*k).map(&:join).join("\n")

end

y = "blahblahblahblahblahblahblahblahblah"
p y.chars.each_slice(4).map(&:join).join(" ")

a = "abcd\nefgh\nijkl\nmnop"
r = "aabbccdd\naabbccdd\naabbccdd\neeffgghh\neeffgghh\neeffgghh\niijjkkll\niijjkkll\niijjkkll\nmmnnoopp\nmmnnoopp\nmmnnoopp"
p scale(a, 2, 3)
p scale("", 5, 5)
p scale("Kj\nSH", 1, 2)

r =  [3,3,4,5,8,1,9,4,4,4,].to_set

r.each{|x| p x}


e =  [3,3,4,5,8,1,9,4,4,4,]

p e.group_by(&:itself).transform_values(&:count).keys