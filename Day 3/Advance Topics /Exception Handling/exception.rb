begin
  ans = 4/0
  raise "zerodivisionerror"
rescue
  puts "Error is rescued"
end