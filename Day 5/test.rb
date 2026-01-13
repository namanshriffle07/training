begin
  array = [1, nil, '']
  raise "Arithmetic Exception"
  array.each do |i|
    puts i
  end
rescue 
  puts "Exception occurred "
end