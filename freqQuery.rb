# Complete the freqQuery function below.
def freqQuery(queries)
	db = {}
	stack = []
	queries.each do |query|
		if(query[0] == 1)
			if(db[query[1]])
				db[query[1]] += 1
			else
				db[query[1]] = 1
			end
		elsif (query[0] == 2)
			if(db[query[1]])
                if( db[query[1]] <= 1 )
                db.delete(query[1])
                    else
                db[query[1]] -= 1
                    end
            end
		elsif (query[0] == 3)
			if(db.values.include?(query[1]))
				stack << 1
			else
				stack << 0
			end
		end
	end
	stack
end

p freqQuery([[1, 3], [2, 3], [3, 2], [1, 4], [1, 5], [1, 5], [1, 4], [3, 2], [2, 4], [3, 2]])