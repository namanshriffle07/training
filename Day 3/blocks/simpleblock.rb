$nums = [1,2,4,5,7,8]
$even = $nums.select {|i| i.even?}
puts "Even numbers from the array : "
puts $even