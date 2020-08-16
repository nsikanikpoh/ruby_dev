require 'net/http'
require 'json'
require 'date'

URL = "https://jsonmock.hackerrank.com/api/transactions/search?userId="
def getUserTransaction(uid, txnType, monthYear)
    # Write your code here
    stack = []
    res = Net::HTTP.get_response(URI(URL+"#{uid}"))
	result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
	stack << result["data"]
	if result["total_pages"] > 1
       2.upto(result["total_pages"]) do |n|
			res = Net::HTTP.get_response(URI(URL+"#{uid}&page=#{n}"))
			result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
			stack << result["data"]
	    end
	end
	stack = stack.flatten.select{|trn| Time.at(trn["timestamp"]/1000).strftime('%m-%Y')==monthYear }
	calc_stack = stack.select{|trn| trn["txnType"]==txnType }
	 if calc_stack.length == 0 || calc_stack.length == 1
	 	[-1]
	 else
	 	av_stack = stack.select{|trn| trn["txnType"]=="debit" }
		spendings = av_stack.map{|e| e["amount"].gsub(/[^\d\.]/, '').to_f}
		av =  spendings.length > 0 ? (spendings.reduce(&:+)/spendings.length).round(2) : 0
	 	res = calc_stack.select{|trn| trn["amount"].gsub(/[^\d\.]/, '').to_f > av}
	    .map{|e| e["id"]}
	    res.length == 0 ? [-1] : res
	 end
end

p getUserTransaction(4, "credit", "01-2019")
#p getUserTransaction(4, 'debit', '02-2019')
#p getUserTransaction(3, "credit", "03-2019")
#p getUserTransaction(2, "credit", "07-2019")
#p getUserTransaction(3, 'debit', '06-2019')
#p getUserTransaction(1, 'debit', '02-2019')
#p getUserTransaction(4, 'debit', '03-2019')
#p getUserTransaction(2, "credit", "04-2019")