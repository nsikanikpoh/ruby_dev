require 'net/http'
require 'json'
require 'date'
URL = "https://jsonmock.hackerrank.com/api/transactions/?userId="
def getUserTransaction(uid, txnType, monthYear)
    # Write your code here
    stack = []
    res = Net::HTTP.get_response(URI(URL+"#{uid}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	stack << result["data"].select{|trn| trn["txnType"]==txnType }
    
	if result["total_pages"] > 1
       #total_pages = total_pages
       2.upto(result["total_pages"]) do |n|
			res = Net::HTTP.get_response(URI(URL+"#{uid}&page=#{n}"))
			result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
			stack << result["data"].select{|trn| trn["txnType"]==txnType }#.select{|trn| trn["txnType"]==txnType && Time.at(trn["timestamp"] / 1000.0).strftime('%m-%Y')==monthYear}
	 end
	end
	stack.flatten.select{|trn| Time.at(trn["timestamp"] / 1000.0).strftime('%m-%Y')==monthYear && trn["amount"].gsub(/[^\d\.]/, '').to_f > 1509.16}
	.map{|e| e["id"]}
end


#p '$123,321.12'.chars.drop(1).reject{|e|e==','}.join('').to_f

p getUserTransaction(4, 'debit', '02-2019')