def nb_year(p0, percent, aug, p)
    # your code
    n = 0
    percent = percent * 0.01
    
    while p0 < p
      p0 += (p0 * percent).to_i + aug
      n += 1
    end

    return n
end


p nb_year(1500, 5, 100, 5000)
p nb_year(1500000, 2.5, 10000, 2000000)
p nb_year(1500000, 0.25, 1000, 2000000)