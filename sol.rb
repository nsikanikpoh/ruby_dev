
class MatrixFormatter
	attr_accessor :arr, :dif
  def initialize(arr)
    @arr = arr
    @dif = 0
  end

  def format
    lines = [
      separator,
      rows.collect { |row| [ format_row(row), row != arrs[-1] ? separator : lseparator] },
      
    ]
    lines.join("\n")
  end





  def separator
    "+#{column_widths.map { |width| '-' * (width + 2) }.join("+")}+"
  end

  def lseparator
  	new_lines = []
  	lines = "+#{column_widths.map { |width| '-' * (width + 2) }.join("+")}+"
  	if isSquare
    	
    	return lines
    
    else
    	padded_list = Marshal.load(Marshal.dump(arrs))
		
		dif = padded_list[0].length - padded_list[-1].length

		if padded_list[0].length  > dif
    	
    		offset = padded_list[0].length - dif
    	elsif padded_list[0].length < dif

    		offset = dif - padded_list[0].length
    	end
    		
    		
    	check = 0
    	
    		lines.each_char do |c|
    			
    			
		    		 	
		    		 	if check <= offset
		    		 		if c == "+"
		    		 			check += 1
		    		 		end

		    		 		new_lines << c
    		   			end
 
    		end

    	#p new_lines.join('')
		return new_lines.join('')

	end

  end

  def format_row(row)

    cells = 0.upto(row.length - 1).map do |ix|
      row[ix].to_s.ljust(column_widths[ix])
    end
    "| #{cells.join(" | ")} |"
  end

  def arrs
    @arr
  end

  def isSquare
	for row in arrs
		if arrs[-1].length != arrs[0].length
			return false
		else
			return true
		end
	end
end
  def column_widths
  	columns.map { |column| column.max_by { |cell| cell.to_s.length }.to_s.length }

  end

  def columns
  	if isSquare
    	rows.transpose
    else
    
		padded_list = Marshal.load(Marshal.dump(arrs))
		
		difc = padded_list[0].length - padded_list[-1].length
		dif = difc
		#p difc
		for i in 1.upto(dif)
			padded_list[-1].push(i)

		end

		
		padded_list.transpose
	
    end
  end

  def rows
    arrs.collect { |arr| arr }
  end
end



def solution(arr, key)
		arr = arr.each_slice(key).to_a
		formatter = MatrixFormatter.new(arr)

		puts formatter.format
end

solution([4, 35, 80, 123, 12345, 44, 8, 5,7,44], 4)
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"


solution([4, 35, 80, 123, 12345, 44, 8, 5,7,44,4], 5)
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

solution([4, 35, 80, 123, 12345, 44, 8, 5,7,44], 10)
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

solution([4, 35, 80, 123, 12345, 44, 8, 5,7,44,22,5], 4)
puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

#solution([4, 35, 80, 123, 12345, 44, 8, 5,7,44], 3)