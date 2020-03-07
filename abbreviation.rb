# Complete the abbreviation function below.

def abbreviation(a, b)
    dp = Array.new(b.size + 1) { Array.new(a.size + 1, false) }
    dp[0][0] = true

    (1..dp[0].size - 1).each do |j|
        dp[0][j] = true if a[j - 1].downcase == a[j - 1]
    end

    (1..dp.size - 1).each do |i|
        (1..dp[0].size - 1).each do |j|
            ca = a[j - 1]
            cb = b[i - 1]

            if ca.upcase == ca
                dp[i][j] = dp[i - 1][j - 1] if ca == cb
            else
                dp[i][j] = ca.upcase == cb ? (dp[i - 1][j - 1] || dp[i][j - 1]) : dp[i][j - 1]
            end
        end
    end

    dp[-1][-1] ? 'YES' : 'NO'
end

p abbreviation("Pi", "P")
p abbreviation("AfPZN", "APZNC")
p abbreviation("LDJAN", "LJJM")
p abbreviation("UMKFW", "UMKFW")
p abbreviation("KXzQ", "K")
p abbreviation("LIT", "LIT")
p abbreviation("QYCH", "QYCH")
p abbreviation("DFIQG", "DFIQG")
p abbreviation("sYOCa", "YOCN")
p abbreviation("JHMWY", "HUVPW")
