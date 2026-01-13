def divide(a,b)
  if b==0
    raise "Divident cant be zero"
  end
  return a/b
end

begin
  puts "Answer is : #{divide(4,0)}"
rescue => e 
  puts "Error occurred : #{e}" 
end