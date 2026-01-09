array = [1,2,3,4,5,6]

even = array.select do |i|
  i%2 == 0
end

odds = array.reject do |i|
  i%2==0
end

puts "Even numbers are"
puts even

puts "Odd numbers are"
puts odds

divisiblebytwo = array.find {|i| i%2==0}

puts "First number divisible by two is : "
puts divisiblebytwo