square = -> (x) {x*x}
puts "Please enter a number : "
val = gets().to_i
sq = square.call(val)
puts "Square of the given number : #{sq}"