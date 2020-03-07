def getTimes(time, direction)
    # Write your code here
    num = time.length
    track_passed = {}
    passed = []
    time_passed = [nil]*num
    (1...num).each do |index|
      if ( (direction[index-1] && direction[index-1] == 1) )   
         (time[index] > num && !track_passed.values.include?(time[index])) ?  track_passed[index] = time[index] : track_passed[index] = index-1
           passed << index
           time_passed[index] = track_passed[index]
      elsif (direction[index-1] && direction[index-1] == 0) 
            (time[index] > num && !track_passed.values.include?(time[index])) ?  track_passed[index] = tme[index] : track_passed[index] = index-1
           passed << index
           time_passed[index] = track_passed[index]
       end 
    end
 #   p passed
 # p (0..num-1).to_a
    unpassed = (0..num-1).to_a.select{|i| !passed.include?(i)}
    #pass unpassed
    unpassed.each do |i|
       if (time[i] > num && !track_passed.values.include?(time[i])) 
         track_passed[i] = time[i]
         passed << i
         time_passed[i] = track_passed[i]
      end
       track_passed[i] = passed.last + 1
       passed << i
       time_passed[i] = track_passed[i]
    end
  time_passed
end

p getTimes([0,0,1,5], [0,1,1,0])

