def numDuplicates(name, price, weight)
    # Write your code here
    stack = []
    0.upto(price.length-1) do |i|
        product_hash = {}
         product_hash[:name] = name[i]
         product_hash[:price] = price[i]
         product_hash[:wight] =  weight[i]
        stack << product_hash   
    end
  stack = stack.group_by{|e| e }.map{|k,v| k[:count] = v.size; k}
  counted_hash = stack.group_by{|h|h}.map{|k,v| k[:count]}.select{|c|c>=2}
  duplicate = counted_hash.count
  counted_hash.length > 0? counted_hash.reduce(:+) - duplicate : 0
end

p numDuplicates(["ball", "bat", "glove", "glove", "glove"], [2,3,1,2,1], [2,5,1,1,1])