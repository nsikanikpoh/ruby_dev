filename = "hosts_access_log_00.txt"
regex = /\d{1,2}\/\bJul\b\/\d{4}\:\d{1,2}\:\d{1,2}\:\d{1,2}/ 
timestamps = []
File.readlines(filename).each do |line|
  timestamps << line[regex]
end
 timestamps = timestamps.group_by(&:itself).transform_values(&:count).select{|k,v|v>1}
  .keys
 out_file = File.open("req_#{filename}", "w")
 timestamps.each{|timestamp| out_file.puts timestamp}
 out_file.close
 



