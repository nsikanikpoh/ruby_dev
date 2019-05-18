begin
  # Any exceptions in here... 
  1/0
rescue => e
  puts "Exception Class: #{ e.class.name }"
  puts "Exception Message: #{ e.message }"
  puts "Exception Backtrace: #{ e.backtrace }"
end

# Outputs:
# Exception Class: ZeroDivisionError
# Exception Message: divided by 0
# Exception Backtrace: ...backtrace as an array...




begin
  # Any exceptions in here... 
  1/0
rescue ZeroDivisionError => e
  puts "Exception Class: #{ e.class.name }"
  puts "Exception Message: #{ e.message }"
  puts "Exception Backtrace: #{ e.backtrace }"
end

# Outputs:
# Exception Class: ZeroDivisionError
# Exception Message: divided by 0
# Exception Backtrace: ...backtrace as an array...