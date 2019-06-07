rot5 = ->(text) do
  alphabet = ("a".."z").to_a
  key = Hash[alphabet.zip(alphabet.rotate(5))]
  text.chars.inject("dec_") { |encrypted, char| encrypted + key[char] }
end


p rot5.call("password")
# => "ufxxbtwi"
p rot5.call("supersecret")
