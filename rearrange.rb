

def numb_match(input)
  my_hash_ob =  input.split.each.with_object({}){|var, myhash| myhash[var] = var.chars.select{|c| !c.match(/^[[:alpha:]]$/)}.first.to_i }
  str_array = (0..5).to_a
  my_hash_ob.each{|k,v| str_array[v-1] = k}
  str_array.join(' ')
end

def numb_match_optimal(input)
  input.split.sort_by{|elem| elem[/\d/].to_i}.join(" ")
end

input = "ru3by pro6gram o4n i1 rai5ls lov2e"


p numb_match_optimal(input)
p numb_match(input)