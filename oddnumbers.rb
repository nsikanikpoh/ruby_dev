def oddNumbers(l,r)
	arr = (l..r).to_a
	odd_arrs = []
	arr.each{|i| odd_arrs << i if i%2 != 0 }
	odd_arrs
end

p oddNumbers(2,9)



def numDuplicates(name, price, weight)
    # Write your code here
    #name_h = name.group_by(&:itself).transform_values(&:count).keys
    duplicate_count = 0
    #p name_h
    (0..price.length-1).each do |i|

         if  [price[i], weight[i], name[i]] == [price[i+1], weight[i+1], name[i+1]]
          duplicate_count += 1 
          next
        end
     
      
    end
    duplicate_count
end
p "ANS"
p numDuplicates(["ball", "bat", "glove", "glove", "glove"], [2,3,1,1,2], [1,1,1,1,1])

def split_word s
  (0..s.length).inject([]){|ai,i|
    (1..s.length - i).inject(ai){|aj,j|
      aj << s[i,j]
    }
  }.uniq
end

p split_word("abcde")