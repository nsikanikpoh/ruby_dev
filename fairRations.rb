# Complete the fairRations function below.
def fairRations(b)
 	total = 0;
    0.upto(b.length-2) do |i|
    
        if(b[i]%2 == 1)
            b[i] += 1
            b[i+1] += 1
            total += 2
        end
    end
    return "NO" if(b[b.length - 1]%2 != 0)
    return total
end

p fairRations([2,3,4,5,6])