def likes(names)
  #your code here
  case names.length
  when 0
    return 'no one likes this'
  when 1
    return  "#{names[0]} likes this"
  when 2
    return  "#{names[0]} and #{names[1]} like this"
  when 3
   return "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
  	return "#{names[0]}, #{names[1]} and #{(names.length - 2).to_s} others like this"
  end
end


p likes [] # must be "no one likes this"
p likes ["Peter"] # must be "Peter likes this"
p likes ["Jacob", "Alex"] # must be "Jacob and Alex like this"
p likes ["Max", "John", "Mark"] # must be "Max, John and Mark like this"
p likes ["Alex", "Jacob", "Mark", "Max"] # must be "Alex, Jacob and 2 others like this"
