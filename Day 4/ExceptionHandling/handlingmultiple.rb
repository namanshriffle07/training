begin
  val = 4/0
  raise TypeError

rescue TypeError
  puts "Types error occurred"
rescue NoMethodError
  puts "No method is used"
rescue ZeroDivisionError
  puts "Divide by zero operation occurred"
rescue IOError
  puts "IO error occurred"
end