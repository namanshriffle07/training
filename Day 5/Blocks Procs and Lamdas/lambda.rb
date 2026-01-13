def call_func
  lam = lambda {|i|}
  lamval = lam.call
  puts lamval
  puts "This code will be executed"
end

call_func