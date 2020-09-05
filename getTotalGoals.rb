require 'net/http'
require 'json'
URL = "https://jsonmock.hackerrank.com/api/football_matches?"
def getTotalGoals(team, year)
    # Write your code here
     stack1 = []
     stack2 = []
     sum = 0
    res = Net::HTTP.get_response(URI(URL+"year=#{year}&team1=#{team}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	stack1 << result["data"]
	if result["total_pages"] > 1
       2.upto(result["total_pages"]) do |n|
			res = Net::HTTP.get_response(URI(URL+"year=#{year}&team1=#{team}&page=#{n}"))
			result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
			stack1 << result["data"]
	    end
	end

	res = Net::HTTP.get_response(URI(URL+"year=#{year}&team2=#{team}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	stack2 << result["data"]
	if result["total_pages"] > 1
       2.upto(result["total_pages"]) do |n|
			res = Net::HTTP.get_response(URI(URL+"year=#{year}&team2=#{team}&page=#{n}"))
			result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
			stack2 << result["data"]
	    end
	end

	stack1 = stack1.flatten.map{|trn| trn["team1goals"].to_i }
	stack2 = stack2.flatten.map{|trn| trn["team2goals"].to_i }
	sum += stack1.sum
	sum += stack2.sum
	sum
end

p getTotalGoals("Barcelona", "2011")