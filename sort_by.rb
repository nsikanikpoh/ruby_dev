 p ["fanz","dru", "ba"].sort{|a,b| a.length <=> b.length }

 p ["glo", "mambo", "iz", "thoo"].sort_by{ |a| a.size }

 
 # Using #partition, two #sorts, and #flatten…
array = ["zoi", 5, "trak", 2.3, 144, "ak"]
array = array.partition{|a| a.is_a? Numeric}
array[0].sort!
array[1].sort!
p array.flatten!




capitals = {
  texas: "Austin",
  california: "Sacremento",
  florida: "Tallahassee",
  new_york: "Albany"
}
# Sorted alphanumerically (default) by values
p capitals.sort_by{ |k,v| v }.to_h

x = [-1, -3, -5, 3, 1, 5]
p x.sort_by { |i| i } 
