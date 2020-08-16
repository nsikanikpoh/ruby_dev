def ransom_note(magazine, ransom)
  words = magazine.group_by(&:itself).transform_values(&:count)
  ransom.each do |it|
    if ( words[it] && words[it]>0)
            words[it] -= 1 
    else
          return false
     end
  end
  return true
end

def checkMagazine(magazine, note)
    if ransom_note(magazine, note)
      print "Yes" 
     else
      print "No"
    end
    []
end

p checkMagazine(["give", "me", "one", "grand", "today", "night"],[ "give", "one", "grand", "today"])
p checkMagazine(["two", "times", "three", "is", "not", "four"], ["two", "times", "two", "is", "four"])
p checkMagazine(["ive", "got", "a", "lovely", "bunch", "of", "coconuts"], ["ive", "got", "some", "coconuts"])



