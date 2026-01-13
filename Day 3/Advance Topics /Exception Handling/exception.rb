begin
  ans = 4/0
  puts ans
  raise "zerodivisionerror"
rescue
  puts "Error is rescued"
end