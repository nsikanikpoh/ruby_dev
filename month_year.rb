def monthYear(time)
	return "#{(Date.parse(Time.at(time).to_s).month).to_s.rjust(2, '0')}-#{Date.parse(Time.at(time).to_s).year}"
end

p monthYear(1335437221)

p Time.at(1475001600079 / 1000.0).strftime('%m-%Y')