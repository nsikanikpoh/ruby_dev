def isValidWalk(walk)
  #your code here
  directions = []
  opposites = {
    "n" => "s",
    "s" => "n",
    "e"  => "w",
    "w"  => "e"
  }
walk.each do |dir|
  opposites[dir] == directions.last ? directions.pop : directions << dir
end

if walk.count > 10
    return false
elsif directions.empty?
   return true
else
	return false
end
end
p isValidWalk(['n','s','n','s','n','s','n','s','n','s'])
p isValidWalk(['w','e','w','e','w','e','w','e','w','e','w','e'])
p isValidWalk(['w'])
p isValidWalk(['n','n','n','s','n','s','n','s','n','s'])