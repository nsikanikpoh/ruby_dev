#!/bin/ruby
require 'net/http'
require 'json'
require 'date'
# Complete the function below.
MONTH_TO_NUM_HASH = {"January" => "01" , "February" => "02",
					"March" => "03", "April" => "04", "May" => "05", "June" => "06",
					"July" => "07", "August" => "08", "September" => "09",
					"October" => "10", "November" => "11", "December" => "12"}
DAYS_OF_WEEK = {
	    "Sunday" => 0,
		"Monday" => 1, 
		"Tuesday" => 2,
		"Wednesday" => 3,
		"Thursday" => 4,
		"Friday" => 5,
	    "Saturday" => 6
	}

URL = "https://jsonmock.hackerrank.com/api/stocks"

def date_converter(date)
	date = date.to_s.split('-')
	day = '%.2d' % date[0]
	month = MONTH_TO_NUM_HASH[date[1]]
	year = date[2]
	[year,month, day].join('-')
end

def valid_date?(dt)
  begin
    Date.parse(dt)
    true
  rescue => e
    false
  end
end

def openAndClosePrices(firstDate, lastDate, weekDay)
	week_day_num = DAYS_OF_WEEK[weekDay]
	firstDate = date_converter(firstDate)
	lastDate = date_converter(lastDate)
	dates =  (firstDate..lastDate).to_a.select{|d| valid_date?(d)}
	             .select{|date| Date.parse(date).wday == week_day_num }
	dates = dates.map{|date| Date.parse(date).strftime("%d-%B-%Y") }
	dates.each do |date|
			res = Net::HTTP.get_response(URI(URL+"/?date=#{date}"))
			result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
			next if result["total"] == 0
			result["data"].each{|stock| print "#{stock["date"]} #{stock["open"]} #{stock["close"]}\n"}
			if result["total_pages"] > 1
               total_pages = total_pages
               2.upto(result["total_pages"]) do |n|
					res = Net::HTTP.get_response(URI(URL+"/?date=#{date}&page=#{n}"))
					result = JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
					result["data"].each{|stock| print "#{stock["date"]} #{stock["open"]} #{stock["close"]}\n"}
			   end
			end
	end
end

openAndClosePrices("1-January-2000", "22-February-2000", "Monday");
