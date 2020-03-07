def getTimes(time, direction)
    num = time.length
    
	#order perople by the time they came in
	(0...num).each do |i|
		if (time[i-1] && time[i-1] == time[i])
			time[i] = i
		end
	end

	track_passed = {}
    passed = []
    time_passed = [nil]*num
   
    (1...num).each do |index|
      if ( ((direction[index-1] && direction[index-1] == 1) && direction[index] == 1) || ((track_passed[index-1] == nil) && direction[index] == 1 ))   
         (time[index] > num && !track_passed.values.include?(time[index])) ?  track_passed[index] = time[index] : track_passed[index] = index-1
           passed << index
           time_passed[index] = track_passed[index]
      elsif ( (direction[index-1] && direction[index-1] == 0) && direction[index] == 0)   
         (time[index] > num && !track_passed.values.include?(time[index])) ?  track_passed[index] = time[index] : track_passed[index] = index-1
           passed << index
           time_passed[index] = track_passed[index]
      end
    end

    #pass unpassed
     unpassed = (0..num-1).to_a.select{|i| !passed.include?(i)}

     unpassed.each do |i|
       (time[i] > num && !track_passed.values.include?(time[i])) ?  track_passed[i] = time[i] : track_passed[i] = track_passed[passed.last] + 1  
       passed << i
       time_passed[i] = track_passed[i]
    end
    result = []
	track_passed.each{|k,v| result[k]=v}
	result
end

p getTimes([0,0,1,5], [0,1,1,0]) #2,0,1,5
p getTimes([0,1,1,3,3], [0,1,0,0,1]) # 0, 2, 1, 4, 3

