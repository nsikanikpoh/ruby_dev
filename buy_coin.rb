require 'net/http'
require 'json'

URL = "https://api.coindesk.com/v1/bpi/currentprice/USD.json"
def buy_coin()
    # Write your code here
    res = Net::HTTP.get_response(URI(URL))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	result["bpi"]["USD"]["rate_float"]
end


#p '$123,321.12'.chars.drop(1).reject{|e|e==','}.join('').to_f

p buy_coin()