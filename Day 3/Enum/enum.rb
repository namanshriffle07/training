arr = [1,2,3,4]
square1 = arr.map{|x| x*x}
puts square1
even = arr.select{|x| x%2==0}
puts even
odd  = arr.reject{|x| x%2==0}
puts odd
largest = arr.find{|x| x>2}
puts largest

