def add_up(numbers, total)
  numbers.combination(2).any? { |pair| pair.sum == total }
end

p add_up([10,3,15,7], 17)


=begin
	
function test(n, arr){
   return arr.some((item, i) => arr.slice(i+1).includes(n-item))
}
let arr = [10, 7, 5, 2]
console.log(test(17, arr));
	
=end