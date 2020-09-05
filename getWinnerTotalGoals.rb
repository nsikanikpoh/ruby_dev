require 'net/http'
require 'json'
URL1 = "https://jsonmock.hackerrank.com/api/football_competitions?"
URL = "https://jsonmock.hackerrank.com/api/football_matches?"
def getWinnerTotalGoals(competition, year)
    # Write your code here
    res = Net::HTTP.get_response(URI(URL1+"name=#{competition}&year=#{year}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	competition_object = result["data"][0]
     stack1 = []
     stack2 = []
     sum = 0
    res = Net::HTTP.get_response(URI(URL+"competition=#{competition}&year=#{competition_object["year"]}&team1=#{competition_object["winner"]}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	stack1 << result["data"]
	if result["total_pages"] > 1
       2.upto(result["total_pages"]) do |n|
			res = Net::HTTP.get_response(URI(URL+"competition=#{competition}&year=#{competition_object["year"]}&team1=#{competition_object["winner"]}&page=#{n}"))
			result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
			stack1 << result["data"]
	    end
	end

	res = Net::HTTP.get_response(URI(URL+"competition=#{competition}&year=#{competition_object["year"]}&team2=#{competition_object["winner"]}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	stack2 << result["data"]
	if result["total_pages"] > 1
       2.upto(result["total_pages"]) do |n|
			res = Net::HTTP.get_response(URI(URL+"competition=#{competition}&year=#{competition_object["year"]}&team2=#{competition_object["winner"]}&page=#{n}"))
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

p getWinnerTotalGoals("UEFA Champions League", "2011")

