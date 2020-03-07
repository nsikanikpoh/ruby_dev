ALPHABET = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

#generated with ALPHABET.split('').shuffle.join
ENCODING = "MOhqm0PnycUZeLdK8YvDCgNfb7FJtiHT52BrxoAkas9RWlXpEujSGI64VzQ31w"
def encode(text)
  text.tr(ALPHABET, ENCODING)
end

def decode(text)
  text.tr(ENCODING, ALPHABET)
end

p encode('password')
p decode("KMvvNdYq")