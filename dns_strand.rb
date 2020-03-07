def DNA_strand(dna)
  #your code here
  lst = dna.split('')
  lst.each.with_index do |c, index|
    if c =='A'
        lst[index] = 'T'
    elsif  c =='T'
      lst[index] = 'A'
    elsif  c == 'C'
       lst[index] = 'G'
     elsif  c == 'G'
       lst[index] = 'C'
     end
    
  end

  return lst.join('').to_s
end


p DNA_strand("AAAA")
p DNA_strand("ATTGC")
p DNA_strand("GTAT")