def numDuplicates(name, price, weight)
    # Write your code here
    tracks = []
  
    0.upto(price.length-1) do |i|
        lane_track = {}
         lane_track["name"] = name[i]
         lane_track["price"] = price[i]
         lane_track["wight"] =  weight[i]
        tracks << lane_track   
    end
  
  tracks = tracks.group_by{|h|h}.map{|k,v|k[:count]=v.size;k}
  l = tracks.group_by{|h|h}.map{|k,v| k[:count]}.select{|c|c>=2}
  c = l.count
  
   l.length > 0? l.reduce(:+) - c : 0
end

p numDuplicates(["ball", "bat", "glove", "glove", "glove"], [2,3,1,1,2], [1,1,1,1,1])