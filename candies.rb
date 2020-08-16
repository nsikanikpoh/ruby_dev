def candies(n, arr)
  dp = [1]*n
  (1...n).each do |i|
  	  if arr[i] > arr[i-1]
           dp[i] = dp[i]+dp[i-1]
      end
  end
  
  (n-2).downto(0) do |i|
  	  if arr[i]>arr[i+1] && dp[i] <= dp[i+1]
           dp[i]= dp[i+1]+1
      end
  end
   dp.sum 
end

def getTimes2(time, direction)
  persons = time.size - 1
  exits = []
  (0..persons).each do |person|
    if time[person] == time[person + 1]
      exits[person + 1] = time[person] if direction[person + 1] == 1 and direction[person] == 0
    else
      exits[person] = time[person] if direction[person] != direction[person + 1]
    end
  end

  exits
end

#p getTimes2([0,0,1,5], [0,1,1,0])
p candies(3, [1,2,2])
p candies(10, [2,4,2,6,1,7,8,9,2,1])
p candies(8, [2,4,3,5,2,6,4,5])



