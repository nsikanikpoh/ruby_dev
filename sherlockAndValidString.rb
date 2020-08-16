def isValid(s)
 sherlock = s.chars.group_by(&:itself).transform_values(&:count)
 vals = sherlock.values
 vals_hash = vals.group_by(&:itself).transform_values(&:count)
 return "YES" if vals_hash.length == 1
 return "NO" if vals_hash.length > 2
 return "YES" if vals_hash[1] == 1
 m = vals.min
 mx = vals.max
 vals_hash[mx] == 1 && mx == m+1 ? "YES" : "NO"
end

p isValid("abcdefghhgfedecba")
p isValid("aabbccddeefghi")
p isValid("aabbcd")
p isValid("abc")