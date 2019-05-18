def get_max_profit(stock_prices)
	begin
			min_price = stock_prices[0]
			max_profit =  stock_prices[1] - min_price

			stock_prices.each_with_index do |price, time|
				min_price = [min_price, price].min
				potential_profit = price - min_price

				max_profit = [max_profit, potential_profit].max

			end
		   return max_profit
		 raise StandardError.new("prices array must be at least 2 entries")
	rescue StandardError => e
		puts "prices array must be at least 2 entries"
		puts "Exception Class: #{ e.class.name }"
  		puts "Exception Message: #{ e.message }"
  		puts "Exception Backtrace: #{ e.backtrace }"

	end
			
end


p get_max_profit([10, 7, 5, 8, 11, 9])

people = {'joe' => 21, 'bill' => 35, 'sally' => 24}

p people.min_by { |name, age| age } #=> ["joe", 21]
p people.max_by { |name, age| age } #=> ["bill", 35]