=begin
		Sort the teams by points.
		a win has 3 points, a draw 1 point and loss 0 point.
=end

def sort_team(teamArray)
	teamArray.sort_by { |team| (team[:win]*3 + team[:draw]*1)}.reverse
end

p sort_team([
	 {name: "team C", win: 3, draw:2, loss:1}, 
	 {name: "team A", win: 3, draw:2, loss:1}, 
	 {name: "team B", win: 1, draw:3, loss:1}
])