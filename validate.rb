# Better Solution
def validate(email)
  /^.+@.+\..+$/ === email
end

p validate('joe@example.com') #=> true
p validate('joe') #=> false