# Another Solution
def to_camel_case(str)
  str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join
end

# returns "theStealthWarrior"
p to_camel_case("the-stealth-warrior")

# returns "TheStealthWarrior"
p to_camel_case("The_Stealth_Warrior")